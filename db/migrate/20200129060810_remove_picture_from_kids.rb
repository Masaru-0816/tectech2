class RemovePictureFromKids < ActiveRecord::Migration[5.2]
  def change
    remove_column :kids, :Picture, :binary
  end
end
