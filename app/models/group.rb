class Group < ApplicationRecord
  has_many :group_notices
  has_many :notices, through: :group_notices
  has_many :kids
end
