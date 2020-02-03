class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :image
      t.integer :album_id
      t.date :date
      t.timestamps
    end
  end
end
