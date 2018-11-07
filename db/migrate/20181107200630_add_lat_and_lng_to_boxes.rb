class AddLatAndLngToBoxes < ActiveRecord::Migration[5.0]
  def change
    add_column :boxes, :latitude, :float
    add_column :boxes, :longitude, :float
  end
end
