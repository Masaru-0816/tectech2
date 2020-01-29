class RemoveKidFromNotices < ActiveRecord::Migration[5.2]
  def change
    remove_reference :notices, :kid, foreign_key: true
  end
end
