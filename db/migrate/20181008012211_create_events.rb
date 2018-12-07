class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.integer :max_participants
      t.integer :cost, null: false
      t.datetime :start_date
      t.datetime :end_date
      t.string :contact_first
      t.string :contact_last
      t.string :contact_email
      t.string :contact_phone
      t.string :url
      t.boolean :is_featured, default: false
      t.boolean :is_approved, default: false
      t.string :image_url
      t.timestamps
    end
  end
end
