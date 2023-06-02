class CustomersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  before_action :redirect_root, only: [:edit,:show,:destroy]
  require 'csv'
  
  def index
    @customers = Customer.page(params[:page]).order('created_at DESC')
    @q = Customer.ransack(params[:q])
  end
  

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
    redirect_to @customer
    else
      render :new
  end
end

  def edit
    
  end

  def update
    if @customer.update(customer_params)
      redirect_to action: :show
    else
    render :edit
    end
  end

  def show
    @comment = Comment.new
    # @comments = Comment.where(customer_id: params[:id].to_i)
    @comments = @customer.comments
  end

  def destroy
    @customer.destroy
    redirect_to root_path
  end

  def search
    @customers = Customer.page(params[:page])
    @customer = Customer.search(params[:keyword])
    @q = Customer.ransack(params[:q])
  end

  def csv_export
    if params[:q]&.dig(:family_name)
      squished_keywords = params[:q][:family_name].squish
      params[:q][:family_name_cont_any] = squished_keywords.split(" ")
    end
    if params[:q]&.dig(:given_name)
      squished_keywords = params[:q][:given_name].squish
      params[:q][:given_name_cont_any] = squished_keywords.split(" ")
    end
    if params[:q]&.dig(:account_number)
      squished_keywords = params[:q][:account_number].squish
      params[:q][:account_number_cont_any] = squished_keywords.split(" ")
    end
    @q = Customer.ransack(params[:q])
    @customers = @q.result.page(params[:page])
    
    csv_data = CSV.generate do |csv|
      header = %w(姓 名前 詳細 会員番号)
      csv << header
      @customers.each do |customer|
        values = [customer.family_name, customer.given_name, customer.detail, customer.account_number]
        csv << values
      end
    end
    send_data(csv_data, filename: "顧客一覧.csv")
  end


  private

  def customer_params
    params.require(:customer).permit(
      :family_name,
      :given_name, 
      :detail, 
      :account_number,
      :type_id,
      ).merge(user_id: current_user.id)
  end  

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def redirect_root
    if @customer.user_id != current_user.id 
      redirect_to root_path
    end
  end
end