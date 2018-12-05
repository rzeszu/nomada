class AddPrimaryImageToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :images_primary, :string
  end
end
