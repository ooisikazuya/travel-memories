class MoneyManagement < ApplicationRecord
  belongs_to :user
  has_many :records
  validates :name, presence: true
  validates :budget, presence: true
  validates :currency, presence: true
end
