class Post < ApplicationRecord
  has_one_attached :image_primary
  has_one_attached :image_two
  has_one_attached :image_three
  has_one_attached :image_four
  has_one_attached :image_five
  has_rich_text :content

  def image_helper(file, destination, scale, size)
    @file = file
    if destination == "grid"
      if scale == 1
        return @file.variant(combine_options: { resize:"1120x#{size}", extent: "668x668", background: "grey", gravity: "center" })
      else
        return @file.variant(combine_options: { resize:"2240x#{2*size}", extent: "#{size}x#{size}", background: "grey", gravity: "center" })
      end
    elsif destination == "post"
      if scale == 1
        return @file.variant(resize:"1120x#{size}")
      else
        return @file.variant(resize:"2240x#{size}")
      end
    end
  end

end
