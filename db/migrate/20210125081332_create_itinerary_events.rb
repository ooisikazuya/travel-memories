class CreateItineraryEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :itinerary_events do |t|
      t.integer :itinerary_id, null: false, foreign_key: true
      t.text :event, null: false, default: ""

      t.timestamps
    end
  end
end
