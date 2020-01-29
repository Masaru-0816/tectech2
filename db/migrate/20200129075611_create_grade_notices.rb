class CreateGradeNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :grade_notices do |t|
      t.references :grade, foreign_key: true
      t.references :notice, foreign_key: true
      t.timestamps
    end
  end
end
