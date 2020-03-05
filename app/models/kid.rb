class Kid < ApplicationRecord
  has_many :kids_users
  has_many :users, through: :kids_users
  has_many :notices
  has_many :albums
  belongs_to :group
  has_many :diaries
  has_many :messages
  
  enum sex: { 男の子: 0, 女の子: 1 }
end
