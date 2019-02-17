class Product < ApplicationRecord
  has_one_attached :file
  has_one_attached :file_2

  def image_helper(file, scale, size)
    @file = file
    if scale = 1
      return @file.variant(resize: "#{size}x#{size}")
    else
      return @file.variant(resize: "#{2*size}x#{2*size}")
    end
  end

  def to_param
    "#{id}-#{name.parameterize}"
  end
end
