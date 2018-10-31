class ChangeArray < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :material
    add_column :products, :material, :integer
  end
end
