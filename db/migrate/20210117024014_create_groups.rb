class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name, null: false, default: ""
      t.string :password, null: false, default: ""
      t.index :name, unique: true
      t.index :password, unique: true

      t.timestamps

    end
  end
end
