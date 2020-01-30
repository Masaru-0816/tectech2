class CreateGroupNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :group_notices do |t|
      t.references :group, foreign_key: true
      t.references :notice, foreign_key: true

      t.timestamps
    end
  end
end
