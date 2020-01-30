class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.string :dinner_content
      t.string :dinner_amount
      t.string :breakfast_content
      t.string :breakfast_amount
      t.timestamps
    end
  end
end
