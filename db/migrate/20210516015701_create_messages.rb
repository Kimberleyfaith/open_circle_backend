class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :chatroom_id
      t.integer :user_id
      t.text :body
      t.timestamps
    end
  end
end
