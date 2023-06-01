class CustomersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  before_action :redirect_root, only: [:edit,:show,:destroy]
  
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
    @customer = @q.result.page(params[:page])
      # csv_data = CSV.generate(headers: true) do |csv|
      #   header = %w(苗字 名前 詳細 会員番号)
      #   csv << header
      #   @customer.each do |customer|
      #     values = [customer.family_name,customer.given_name ,customer.detail, customer.account_number]
      #     puts values
      #     csv << values
      #     puts "a"
      #     puts csv
      #   end
      # end
      # if RUBY_PLATFORM =~ /mswin|mingw|cygwin/
      #   # Windowsの場合
      #   desktop_path = File.join(File.expand_path('~'), 'Desktop')
      # else
      #   # Macの場合
      #   desktop_path = File.join(File.expand_path('~/Desktop'))
      # end
      # filename = "カスタマー情報_#{Time.current.strftime('%Y%m%d%S')}.csv" # 保存するファイル名を指定する
      # filepath = File.join(desktop_path, filename) # パスとファイル名を結合する

      # File.open(filepath, "w") do |file|
      #   file.write(csv_data)
      # end
      # puts '終了'
      # fp = open(filepath,'r')
      # line_count = fp.read.count("\n")
      # puts line_count
      # if line_count > 2
      #   @key = flash[:@key] = "⚠️デスクトップに保存されました。"
      # end
      # if line_count <= 2
      #   File.delete(filepath)
      # end
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