class Message < ApplicationRecord
  belongs_to :kid
  belongs_to :user
  belongs_to :kids_user

  validates :content, presence: true, unless: :image?
  mount_uploader :image, ImageUploader
end
