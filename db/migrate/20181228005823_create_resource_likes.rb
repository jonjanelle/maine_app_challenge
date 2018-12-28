class CreateResourceLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :resource_likes do |t|
      t.references :resource, foreign_key: true, null: false
      t.string :client_ip, null: false # basic defense against multi-voting in the same direction.
      t.integer :value, null: false # 1 for like, -1 for dislike
      t.timestamps
    end
  end
end
