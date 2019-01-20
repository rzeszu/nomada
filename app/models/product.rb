class Product < ApplicationRecord
  has_one_attached :file
  has_one_attached :file_2


  def to_param
    "#{id}-#{name.parameterize}"
  end
end
