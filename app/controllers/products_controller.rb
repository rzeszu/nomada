class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Świetnie, produkt został utworzony.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
      # Usun wszelkie nile
      if (@product.material.include? nil) == true
        @index = @product.material.index(nil)
        @product.material.delete_at(@index)
        @product.save
      end
      if (@product.category.include? nil) == true
        @index = @product.category.index(nil)
        @product.category.delete_at(@index)
        @product.save
      end
      if (@product.color.include? nil) == true
        @index = @product.color.index(nil)
        @product.color.delete_at(@index)
        @product.save
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Rewelacja, zaktualizowałeś produkt.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
      if (@product.material.include? nil) == true
        @index = @product.material.index(nil)
        @product.material.delete_at(@index)
        @product.save
      end
      if (@product.category.include? nil) == true
        @index = @product.category.index(nil)
        @product.category.delete_at(@index)
        @product.save
      end
      if (@product.color.include? nil) == true
        @index = @product.color.index(nil)
        @product.color.delete_at(@index)
        @product.save
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :price, :where_from, :description, :quantity, :care, :available, :image, {:color => []}, {:category => []}, {:material => []}, {images: []})
    end
end
