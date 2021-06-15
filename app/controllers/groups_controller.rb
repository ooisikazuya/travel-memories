class GroupsController < ApplicationController
  before_action :set_user, only: [:index, :create]

  def index
    @groups = Group.where(id: @user.group_users.pluck(:group_id))
  end

  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @group = @user.groups.new(group_params)
    @group.save!
    GroupUser.create(group: @group, user: @user)
    flash[:notice] = "グループを作成しました！"
    redirect_to groups_path
  rescue
    render :new
  end

  def join
    group = Group.find_by(password: params[:password])
    unless group
      flash[:notice] = "グループが見つかりませんでした"
      @group = Group.new
      redirect_to new_group_path and return
    end
    group.group_users.find_or_create_by(user: current_user)
    flash[:notice] = "グループに加入しました！"
    redirect_to groups_path
  end
  
  private

  def group_params
    params.require(:group).permit(:name, :password, user_ids: [])
  end

  def set_user
    @user = current_user
  end
end