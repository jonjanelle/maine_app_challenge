class ResourceType < ActiveRecord::Migration[5.1]
  def change
    create_table :resource_types do |t|
      t.string :name, null: false
      t.string :description
      t.integer :value, null: false
      t.timestamps
    end
  end
end
