class CreateGroupAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :group_albums do |t|
      t.references :group, foreign_key: true
      t.references :album, foreign_key: true
      t.timestamps
    end
  end
end
