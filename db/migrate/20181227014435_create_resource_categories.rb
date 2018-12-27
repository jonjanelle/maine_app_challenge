class CreateResourceCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :resource_categories do |t|
      t.references :resource, foreign_key: true, null: false
      t.references :category, foreign_key: true, null: false
      t.timestamps
    end
  end
end
