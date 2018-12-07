class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.integer :view_count
      t.references :resource_type
      t.string :url
      t.boolean :is_featured, default: false
      t.boolean :is_approved, default: false
      t.string :image_url
      t.timestamps
    end
  end
end
