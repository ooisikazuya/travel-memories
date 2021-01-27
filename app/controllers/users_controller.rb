class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @group = Group.find(params[:group_id])
    @users = User.where(id: @group.group_users.pluck(:user_id))
  end

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)

    redirect_to user_path
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :image)
  end
end