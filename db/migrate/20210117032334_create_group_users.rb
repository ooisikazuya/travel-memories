class CreateGroupUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :group_users do |t|
      t.integer :group_id, null: false, foreign_key: true
      t.integer :user_id, null: false, foreign_key: true

      t.timestamps
    end
    add_index :group_users, [:group_id, :user_id], unique: true
  end
end
