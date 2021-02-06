class CreateMoneyManagements < ActiveRecord::Migration[5.2]
  def change
    create_table :money_managements do |t|
      t.string :name, null: false, default: ""
      t.integer :user_id, null: false, foreign_key: true
      t.integer :budget, null: false
      t.string :currency, null: false, default: ""

      t.timestamps
    end
  end
end
