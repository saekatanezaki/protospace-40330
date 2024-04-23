class UsersController < ApplicationController

  def show
    # @user = User.find(params[:id])
    # @comment = Comment.all
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
    #@comment = Comment.find(params[:user_id])
    # @prototype = current_user.prototypes
    # @comments = current_user.comments
  end

end
