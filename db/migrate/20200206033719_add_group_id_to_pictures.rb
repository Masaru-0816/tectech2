class AddGroupIdToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :group_id, :integer
  end
end
