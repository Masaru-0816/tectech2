class Diary < ApplicationRecord
  before_action :authenticate_user!

  belongs_to :kid
end
