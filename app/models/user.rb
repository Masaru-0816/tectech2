class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :kids_users
  has_many :kids, through: :kids_users
  has_many :messages
  has_many :albums

end
