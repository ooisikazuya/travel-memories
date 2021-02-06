class MoneyManagement < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :user_id, presence: true
  validates :budget, presence: true
  validates :currency, presence: true
end
