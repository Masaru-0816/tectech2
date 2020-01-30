class RemoveGradeFromNotices < ActiveRecord::Migration[5.2]
  def change
    remove_column :notices, :grade, :string
  end
end
