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
      render :new and return
    end
    group.group_users.find_or_create_by(user: current_user)
    flash[:notice] = "グループに加入しました！"
    redirect_to groups_path
  end

  private
  def group_params
    params.require(:group).permit(:name, :password, user_ids: [])
  end
end