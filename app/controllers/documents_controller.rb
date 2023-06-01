class DocumentsController < ApplicationController
  before_action :authenticate_user!
  require 'clipboard'
  require 'csv'
    def index
      @documents = Document.page(params[:page])
  
    end
    
    def destroy
    end
    
    def destroy_all
      Document.destroy_all
      redirect_to documents_path
    end
    
    def import
      # fileはtmpに自動で一時保存される
      Document.import(params[:file])
      redirect_to documents_path
    end

    def copy
      data = Document.all
      csv_data = CSV.generate(headers: true, col_sep: "\t") do |csv|
        header = %w(苗字 名前 会員番号)
        csv << header
        data.each do |customer|
          values = [customer.last_name, customer.personal_name, customer.number]
          csv << values
        end
      end
  
      result = csv_data.gsub(/,/, '').gsub(/(?<=\t)(?=[^\t])/, ' ').gsub(/(?<=[^\p{Hiragana}\p{Katakana}])(?=[\p{Hiragana}\p{Katakana}])/, ' ').gsub(/(?<=\p{Hiragana}|\p{Katakana})(?=\d)/, ' ')
      Clipboard.copy(result)
      redirect_to documents_path
    end
  end