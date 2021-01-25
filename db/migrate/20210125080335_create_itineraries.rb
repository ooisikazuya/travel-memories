class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.string :name, null: false, default: ""
      t.integer :group_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
