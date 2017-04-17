class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = @commentable.comments.new comment_params
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to @commentable, notice: "comment posted"
    end

  end

  private
  def comment_params
    params.require(:comment).permit(:content,:user_id)
  end
end
