class Kid < ApplicationRecord
  has_many :kids_users
  has_many :users, through: :kids_users
  has_many :notices
  has_many :albums
  belongs_to :group
  has_many :diaries
  has_many :messages
  
  enum sex: { man: 0, woman: 1 }
end
