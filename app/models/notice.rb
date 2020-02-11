class Notice < ApplicationRecord
  belongs_to :kid
  belongs_to :user
  has_many :group_notices
  has_many :groups, through: :group_notices
  default_scope -> { order(created_at: :desc) }
  
  validates :content, presence: true, unless: :image?
  mount_uploader :image, ImageUploader
end
