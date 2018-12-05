class AddMorePhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :images_2, :string
    add_column :products, :images_3, :string
    add_column :products, :images_4, :string
  end
end
