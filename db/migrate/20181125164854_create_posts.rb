class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.integer :view_count, null: false, default: 0
      t.boolean :is_approved, null: false, default: false
      t.boolean :is_featured, null: false, default: false
      t.references :posts, foreign_key: true
      t.references :users, foreign_key: true, null: false
    end
  end
end
