class GroupUser < ApplicationRecord
  validates :group_id,  uniqueness: { scope: [:user_id] }
  belongs_to :user
  belongs_to :group
end
