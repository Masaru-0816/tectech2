class Grade < ApplicationRecord
  has_many :grade_notices
  has_many :notices, through: :grade_notices
  has_many :kids
end
