class RemoveSubtitleFromPost < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :subtitle, :string
  end
end
