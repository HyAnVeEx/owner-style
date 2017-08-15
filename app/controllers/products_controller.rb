class ProductsController < ApplicationController
  def index
     @products = Product.all.order("created_at DESC")

         # @products.each do |product|
    #   @orders =  product.orders
    #   sum = 0
    #   @orders.each do |order|
    #     sum += order.num
    #   end
    #   @sum = sum
    # end
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
    params.require(:product).permit(:title, :area, :price, :deadline, :image)

  end

end
