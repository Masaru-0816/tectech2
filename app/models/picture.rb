class Picture < ApplicationRecord
  belongs_to :album
  has_many :group_pictures
  has_many :groups, through: :group_pictures

  mount_uploader :image, ImageUploader
end
