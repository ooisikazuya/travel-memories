class ItinerariesController < ApplicationController
  def index
    @user = current_user
    @groups = Group.where(id: @user.group_users.pluck(:group_id))
    @itineraries = Itinerary.where(group_id: @groups)
  end

  def new
    @user = current_user
    @groups = Group.where(id: @user.group_users.pluck(:group_id))
    @itinerary = Itinerary.new
  end

  def create
    itinerary = Itinerary.create(itinerary_params)
    redirect_to itineraries_path
  end

  def edit
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:name, :group_id)
  end

end
