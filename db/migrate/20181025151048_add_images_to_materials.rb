class AddImagesToMaterials < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :images
    add_column :products, :images, :string
  end
end
