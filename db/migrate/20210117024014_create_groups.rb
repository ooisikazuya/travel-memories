class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name, null: false, default: ""
      t.string :password, null: false, default: ""

      t.timestamps

      add_index :groups, [:name, :password], unique: true
    end
  end
end
