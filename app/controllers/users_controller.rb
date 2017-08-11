class UsersController < ApplicationController
  def index
    # @image = current_user.image
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

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to users_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :picture)
  end
end
