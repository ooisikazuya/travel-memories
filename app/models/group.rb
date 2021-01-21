class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  validates :name, presence: true, uniqueness: true
  validates :password, presence: true, uniqueness: true, length: { minimum: 8 }
end