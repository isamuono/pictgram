class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @comment.topic_id = params[:topic_id]
  end
  
  def create
    @comment = current_user.comments.new(comment_params)
    #@comment.user_id = current_user.id
    #binding.pry
    #@comment.topic_id = comment_params[:topic_id]
    
    if @comment.save
      redirect_to topics_path, success: 'コメントしました'
    else
      redirect_to topics_path, danger: 'コメントに失敗しました'
    end
  end
  
  private
  def comment_params
    params.require(:comment).permit(:topic_id, :content)
  end
end