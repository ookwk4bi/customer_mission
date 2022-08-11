class CustomersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  
  def index
    
    # @customers = Customer.page(params[:page])
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
    redirect_to root_path
   else
    render :edit
   end
  end

  def show
    @customer = Customer.find(params[:id])
    @comment = Comment.new
    # @comments = Comment.where(customer_id: params[:id].to_i)
    @comments = @customer.comments
  end

  def destroy
    
    @customer.destroy
    redirect_to root_path
  end

  def search
    if params[:q]&.dig(:name)
    squished_keywords = params[:q][:name].squish
    params[:q][:name_cont_any] = squished_keywords.split(" ")
  end
  @q = Item.ransack(params[:q])
  @customers = @q.result
  end

  private

  def customer_params
    params.require(:customer).permit(
      :family_name,
      :given_name, 
      :detail, 
      :account_number
      )
  end  

  def set_customer
    @customer = Customer.find(params[:id])
  end
end