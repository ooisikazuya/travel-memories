class Itinerary < ApplicationRecord
  has_many :itinerary_events
  validates :name, presence: true
end
