class Product < ApplicationRecord
  mount_uploaders :images, ImageUploader
  has_many :categories
end
