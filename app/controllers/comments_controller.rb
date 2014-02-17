class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.create(content: params[:comment][:content], post_id: params[:post_id], author_id: session[:user_id])
    redirect_to post_path(comment.post)
  end

  def destroy
    comment = Comment.find(params[:id]).destroy
    redirect_to post_path(comment.post)
  end
end
