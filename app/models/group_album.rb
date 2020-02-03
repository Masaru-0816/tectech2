class GroupAlbum < ApplicationRecord
  belongs_to :group
  belongs_to :album
end
