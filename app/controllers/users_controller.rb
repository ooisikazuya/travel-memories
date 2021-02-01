class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update]
  
  def index
    @group = Group.find(params[:group_id])
    @users = User.where(id: @group.group_users.pluck(:user_id))
  end

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)

    redirect_to user_path
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :image)
  end

  def set_user
    @user = current_user
  end
end