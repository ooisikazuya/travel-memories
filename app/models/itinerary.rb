class Itinerary < ApplicationRecord
  has_many :itinerary_events
  belongs_to :group
  validates :name, presence: true
end
