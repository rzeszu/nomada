class ManageController < ApplicationController
  before_action :authenticate_admin!
  def products
    @products = Product.all
  end
  def countries
    @countries = WhereFrom.all
  end
end
