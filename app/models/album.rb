class Album < ApplicationRecord
  belongs_to :user
  has_many :group_albums
  has_many :groups, through: :group_albums
  has_many :pictures

  validates :image, presence: true
  mount_uploader :image, ImageUploader
end
