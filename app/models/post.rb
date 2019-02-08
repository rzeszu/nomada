class Post < ApplicationRecord
  has_one_attached :image_primary
  has_one_attached :image_two
  has_one_attached :image_three
  has_one_attached :image_four
  has_one_attached :image_five
  has_rich_text :content
end
