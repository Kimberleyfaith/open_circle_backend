class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.text :image, array: true
      t.text :content
      t.text :likes, array: true
      t.timestamps
    end
  end
end
