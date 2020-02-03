class AddImageToAlbum < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :image, :string
    rename_column :albums, :name, :title
  end
end
