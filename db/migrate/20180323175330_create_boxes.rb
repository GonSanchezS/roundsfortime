class CreateBoxes < ActiveRecord::Migration[5.0]
  def change
    create_table :boxes do |t|
      t.string :name
      t.string :url
      t.text :description
      t.string :address
      t.string :city
      t.integer :zip
      t.string :country
      t.string :facebook
      t.string :instagram
      t.boolean :is_social
      t.integer :price
      t.string :currency
      t.boolean :dropin
      t.string :certification
      t.integer :opening
      t.timestamps
    end
  end
end
