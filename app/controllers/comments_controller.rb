class CommentsController < ApplicationController

def create
  # @comment = @prototype.messages.new(comment_params)
  @comment = Comment.new(comment_params)
  # @prototype = Prototype.find(params[:prototype_id])
  if @comment.save
  redirect_to prototype_path(@comment.prototype)
else
  @prototype = @comment.prototype
  @comments = @prototype.comments
  render "prototypes/show"
  end
end

def new
  @comment = Comment.new
end

def show
  @prototype = Prototype.find(params[:id])
  @comments = @prototype.comments.includes(:user)
end

private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
