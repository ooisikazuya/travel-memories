class GroupsController < ApplicationController
  def index
    @user = current_user
  end

  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @user = current_user
    @group = @user.groups.new(group_params)
    @group.save!
    GroupUser.create(group: @group, user: @user)
    redirect_to groups_path
  rescue
    render :new
  end

  private
  def group_params
    params.require(:group).permit(:name, :password)
  end
end