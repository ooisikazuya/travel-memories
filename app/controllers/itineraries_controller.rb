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

  def show
    @itinerary = Itinerary.find(params[:id])
    @events = ItineraryEvent.where(itinerary_id: @itinerary)
  end

  def edit
    @itinerary = Itinerary.find(params[:id])
    @events = ItineraryEvent.where(itinerary_id: @itinerary).order(:sort_order)
  end

  def create
    itinerary = Itinerary.create(itinerary_params)
    redirect_to itineraries_path
  end

  def update
    @itinerary = Itinerary.find(params[:id])
    (0..200).each do |i|
      break if params["itinerary_event_id_#{i}"].nil?
      @event = @itinerary.itinerary_events.find(params["itinerary_event_id_#{i}"].to_i)
      @event.event = params["itinerary_event_#{i}"]
      @event.save
    end
    @itinerary.itinerary_events.create(event: params['itinerary_event']) if params['itinerary_event'].present?
    flash[:notice] = "しおりを更新しました！"
    redirect_to itinerary_path
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:name, :group_id)
  end
end
