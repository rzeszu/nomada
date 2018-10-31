class AddSecondArray < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :category
    add_column :products, :category, :integer, array: true, default: []
  end
end
