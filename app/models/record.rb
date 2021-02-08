class Record < ApplicationRecord
  belongs_to :money_management
  validates :category, presence: true
  validates :content, presence: true
  validates :cost, presence: true
end
