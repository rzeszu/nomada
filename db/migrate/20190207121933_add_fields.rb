class AddFields < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :subtitle, :text
    add_column :posts, :image_description, :string
  end
end
