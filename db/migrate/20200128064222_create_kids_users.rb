class CreateKidsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :kids_users do |t|
      t.references :user, foreign_key: true
      t.references :kid, foreign_key: true
      t.timestamps
    end
  end
end
