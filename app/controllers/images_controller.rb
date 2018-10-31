class ImagesController < ApplicationController
  before_action :set_product

  def create
    add_more_images(images_params[:images])
    flash[:error] = "Failed uploading images" unless @product.save
    return redirect_to product_path(@product)
  end

  def destroy
    remove_image_at_index(params[:id].to_i)
    flash[:error] = "Failed deleting image" unless @product.save
    return redirect_back(fallback_location: edit_product_path(@product.id))
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def add_more_images(new_images)
    if new_images
      images = @product.images
      images += new_images
      @product.images = images
    end
  end

  def remove_image_at_index(index)
    remain_images = @product.images
    if index == 0 && @product.images.size == 1
      @product.remove_images!
    else
      deleted_image = remain_images.delete_at(index)
      deleted_image.try(:remove!)
      @product.images = remain_images
    end
  end

  def images_params
    params.require(:product).permit(:price, {images: []}) # allow nested params as array
  end
end
