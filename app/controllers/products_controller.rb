class ProductsController < ApplicationController
  def index
    @products = Product.all.order("created_at DESC")
    @products.each do |product|
      @rem = product.rem
      if @rem == 0 || @rem < 0
        product.update(status: "受付終了",rem_num: @rem)
      else
        product.update(status: "受付中",rem_num: @rem)
      end
    end
      respond_to do |format|
        format.html
        format.json { render json: @products}
      end
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

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    if product.update(product_params)
      redirect_to root_path
    end
  end

  private
  def product_params
    params.require(:product).permit(:title, :area, :price, :deadline, :image, :max_num)

  end

end
