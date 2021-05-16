class CreateCircles < ActiveRecord::Migration[5.2]
  def change
    create_table :circles do |t|
      t.integer :circle_id
      t.text :name
      t.text :image
      t.timestamps
    end
  end
end
