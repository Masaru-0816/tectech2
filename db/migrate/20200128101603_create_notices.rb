class CreateNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :notices do |t|
      t.string :content
      t.string :image
      t.references :kid, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
