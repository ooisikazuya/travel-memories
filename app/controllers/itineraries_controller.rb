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
    @events = ItineraryEvent.where(itinerary_id: @itinerary)
  end

  def create
    itinerary = Itinerary.create(itinerary_params)
    redirect_to itineraries_path
  end

  def update
    @itinerary = Itinerary.find(params[:id])
    @events = ItineraryEvent.where(itinerary_id: @itinerary)
    if @events.present?
      @events.update(event: params['itinerary_event'])
      flash[:notice] = "しおりを更新しました！"
      redirect_to itinerary_path
    else
      @events = ItineraryEvent.create(itinerary_id: @itinerary.id, event: params['itinerary_event'])
      @events.save!
      flash[:notice] = "しおりを更新しました！"
      redirect_to itinerary_path
    end
  end

  def destroy
  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:name, :group_id)
  end
end
