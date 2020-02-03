class Group < ApplicationRecord
  has_many :group_notices
  has_many :notices, through: :group_notices
  has_many :kids
  has_many :group_albums
  has_many :albums, through: :group_albums
end
