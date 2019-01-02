class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :image_primary
      t.string :title
      t.date :date
      t.string :local
      t.text :content

      t.timestamps
    end
  end
end
