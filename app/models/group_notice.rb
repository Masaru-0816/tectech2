class GroupNotice < ApplicationRecord
  belongs_to :group
  belongs_to :notice
end
