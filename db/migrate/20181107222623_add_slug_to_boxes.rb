class AddSlugToBoxes < ActiveRecord::Migration[5.0]
  def change
    add_column :boxes, :slug, :string
  end
end
