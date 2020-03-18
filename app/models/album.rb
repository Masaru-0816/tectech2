class Album < ApplicationRecord
  has_many :group_albums
  has_many :groups, through: :group_albums

  validates :image, presence: true
  mount_uploader :image, ImageUploader
end
