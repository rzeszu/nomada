class AddFieldToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :subtitle_two, :string
    add_column :posts, :subtitle_three, :string
    add_column :posts, :subtitle_four, :string
    add_column :posts, :subtitle_five, :string
  end
end
