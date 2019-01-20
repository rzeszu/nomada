class ManageController < ApplicationController
  before_action :authenticate_admin!
  def products
    @products = Product.all
  end
end
