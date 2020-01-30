class GradeNotices < ActiveRecord::Migration[5.2]
  def change
    drop_table :grade_notices
  end
end
