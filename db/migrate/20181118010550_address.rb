class Address < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :address1, null: false
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.float :lat
      t.float :lon
      t.timestamps
    end
  end
end
