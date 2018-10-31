class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.integer :where_from
      t.integer :material
      t.text :description
      t.integer :quantity
      t.integer :category
      t.integer :care
      t.boolean :available
      t.integer :color

      t.timestamps
    end
  end
end
