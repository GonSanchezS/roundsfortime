class RenameCityToCityId < ActiveRecord::Migration[5.0]
  def change
    remove_column :boxes, :city
    add_reference :boxes, :city, foreign_key: true
  end
end
