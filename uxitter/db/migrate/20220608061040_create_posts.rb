class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :before, null: false
      t.string :after, null: false
      t.string :name
      t.integer :count, default: 0
      t.timestamps
    end
  end
end
