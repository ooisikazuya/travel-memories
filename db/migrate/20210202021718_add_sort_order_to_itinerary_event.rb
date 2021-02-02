class AddSortOrderToItineraryEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :itinerary_events, :sort_order, :integer, null: false, default: 1
  end
end
