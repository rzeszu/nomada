class ManageController < ApplicationController
  def products
    @products = Product.all
  end
end
