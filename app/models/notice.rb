class Notice < ApplicationRecord
  belongs_to :kid
  belongs_to :user
  has_many :group_notices
  has_many :groups, through: :group_notices

  validates :content, presence: true, unless: :image?
  mount_uploader :image, ImageUploader
end
