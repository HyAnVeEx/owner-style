class ProductsController < ApplicationController
  def index
    @product = Product.new
  end

  def new
    @product = Product.new
  end


  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to root_path
  end

  def show
    @product = Product.find(params[:id])
  end



  private
  def product_params
    params.require(:product).permit(:title, :area, :price,:deadline)

  end

end
