class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    @comment = Comment.new
  end
    
    def create
    Comment.create(comment_params)
    @comments = Comment.all
    end
  
  private
  def comment_params
  params.require(:comment).permit(:title, :body)
  end

end
