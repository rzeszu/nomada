class AddVisibilityToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :visible, :boolean, default: false
  end
end
