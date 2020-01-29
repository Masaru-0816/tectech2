class AddImageToKids < ActiveRecord::Migration[5.2]
  def change
    add_column :kids, :image, :string
  end
end
