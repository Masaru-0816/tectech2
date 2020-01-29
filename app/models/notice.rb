class Notice < ApplicationRecord
  belongs_to :kid
  belongs_to :user
  has_many :grade_notices
  has_many :grades, through: :grade_notices

  validates :content, presence: true, unless: :image?
  mount_uploader :image, ImageUploader
end
