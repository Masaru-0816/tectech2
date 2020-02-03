class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :school_name
      t.string :telephone
      t.string :address
      t.string :person_name
      t.timestamps
    end
  end
end
