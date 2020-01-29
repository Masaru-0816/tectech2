class AddGradeToNotices < ActiveRecord::Migration[5.2]
  def change
    add_column :notices, :grade, :string
  end
end
