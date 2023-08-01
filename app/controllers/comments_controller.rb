class CommentsController < ApplicationController

  def create
    comment = Comment.new(comment_params)
    if Comment.create(comment_params)
      redirect_to prototype_path(comment.prototype_id)
    else
      @prototype = comment.prototype_id
      @comments = @prototype.comments
      render "prototypes/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end