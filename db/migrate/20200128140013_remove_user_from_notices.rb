class RemoveUserFromNotices < ActiveRecord::Migration[5.2]
  def change
    remove_reference :notices, :user, foreign_key: true
  end
end
