class ItinerariesController < ApplicationController
  def index
    @user = current_user
    @groups = Group.where(id: @user.group_users.pluck(:group_id))
  end

  def new
    @user = current_user
    @groups = Group.where(id: @user.group_users.pluck(:group_id))
  end

  def edit
  end
end
