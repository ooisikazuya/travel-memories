class MoneyManagement < ApplicationRecord
  belongs_to :user
  has_many :records
  validates :name, presence: true
  validates :budget, presence: true
  validates :currency, presence: true
  accepts_nested_attributes_for :records, allow_destroy: :destroy, reject_if: :all_blank
end
