class AddGradeToKids < ActiveRecord::Migration[5.2]
  def change
    add_column :kids, :grade, :string
  end
end
