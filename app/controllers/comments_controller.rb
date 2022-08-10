class CommentsController < ApplicationController

    def create
      @comment = Comment.new(comment_params)
      @comment.user_id = current_user.id
      if @comment.save
        redirect_to root_path
      else
        @customer = Customer.find(params[:customer_id])
        redirect_to root_path
      end
    end
  
    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to root_path
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:body, :score, :customer_id, :user_id)
    end
  end