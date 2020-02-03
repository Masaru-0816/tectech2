class Kid < ApplicationRecord
  has_many :kids_users
  has_many :users, through: :kids_users
  has_many :notices
  belongs_to :group
  has_many :diaries
  has_many :messages
  
end
