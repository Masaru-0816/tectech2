class RemoveGradeFromKids < ActiveRecord::Migration[5.2]
  def change
    remove_column :kids, :grade, :string
  end
end
