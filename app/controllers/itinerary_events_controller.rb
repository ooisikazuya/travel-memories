class ItineraryEventsController < ApplicationController
  def destroy
    itinerary = Itinerary.find(params[:itinerary_id])
    itinerary.itinerary_events.find(params[:id]).destroy!
    redirect_to edit_itinerary_path(itinerary)
  end
end
