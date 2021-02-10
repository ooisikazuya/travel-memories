class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :money_management_id, null: false, foreign_key: true
      t.string :category, null: false, default: ""
      t.text :content, null: false, default: ""
      t.integer :cost, null: false

      t.timestamps
    end
  end
end
