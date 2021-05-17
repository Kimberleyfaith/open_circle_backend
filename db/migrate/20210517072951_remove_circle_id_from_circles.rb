class RemoveCircleIdFromCircles < ActiveRecord::Migration[5.2]
  def change
    remove_column :circles, :circle_id, :integer
  end
end
