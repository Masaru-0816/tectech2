class AddUseIdToKid < ActiveRecord::Migration[5.2]
  def change
    add_column :kids, :user_id, :integer
  end
end
