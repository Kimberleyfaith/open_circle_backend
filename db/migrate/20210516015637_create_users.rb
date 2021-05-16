class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.string :password_digest
      t.text :name
      t.text :profile_image
      t.text :cover_image
      t.text :bio
      t.date :birthday
      t.text :location
      t.text :placeholder
      t.timestamps
    end
  end
end
