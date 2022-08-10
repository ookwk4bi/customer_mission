class DocumentsController < ApplicationController
    def index
      @documents = Document.page(params[:page])
  
    end
    
    def destroy
    end
    
    def destroy_all
        Document.destroy_all
        redirect_to root_path
      end
    
    def import
      
        # fileはtmpに自動で一時保存される
        Document.import(params[:file])
        redirect_to documents_path
      end
    end