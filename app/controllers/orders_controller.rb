class OrdersController < ApplicationController
  def new
    @order = Order.new
    @product = Product.find(params[:product_id])
  end

  def create
    @order = Order.new(order_params)
    @order.save
    redirect_to root_path
  end

  private
  def order_params
     params.require(:order).permit(:num).merge(user_id: current_user.id,product_id: params[:product_id])
  end

end
