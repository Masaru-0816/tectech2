class Kid < ApplicationRecord
  has_many :kids_users
  has_many :users, through: :kids_users
end
