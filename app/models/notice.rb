class Notice < ApplicationRecord
  belongs_to :kid
  belongs_to :user

  validates :content, presence: true, unless: :image?
  mount_uploader :image, ImageUploader
end