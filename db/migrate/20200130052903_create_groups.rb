class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name, null: false, unique: true
      t.index :name, unique: true
      t.timestamps
    end
  end
end
