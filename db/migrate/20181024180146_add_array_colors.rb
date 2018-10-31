class AddArrayColors < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :color
    add_column :products, :color, :integer, array: true, default: []
  end
end
