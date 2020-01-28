class RemoveClassFromKids < ActiveRecord::Migration[5.2]
  def change
    remove_column :kids, :class, :string
  end
end
