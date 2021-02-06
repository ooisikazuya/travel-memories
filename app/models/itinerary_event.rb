class ItineraryEvent < ApplicationRecord
  belongs_to :itinerary
  validates :event, presence: true
end
