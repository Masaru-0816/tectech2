class AddColumnToAlbum < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :created_at, :datetime
    add_column :albums, :updated_at, :datetime
    remove_column :albums, :date
  end
end
