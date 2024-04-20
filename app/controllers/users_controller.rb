class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @comment = Comment.all
    @prototype = current_user.prototypes
    @comments = current_user.comments
  end

end
