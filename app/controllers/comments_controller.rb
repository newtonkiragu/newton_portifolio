class CommentsController < ApplicationController
  before_action :authenticate_user!
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      flash[:notice] = 'Comment added successfully!'
      redirect_to @article
    else
      flash[:alert] = 'Error saving comment!'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
