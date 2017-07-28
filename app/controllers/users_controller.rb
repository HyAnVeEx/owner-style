class UsersController < ApplicationController
  def index
  end

  def edit
    user = User.find(params[:id])
    @id = user.id
    @name = user.name
    @email = user.email
    # @pw = user.encrypted_password
  end

  def update
    # binding.pry
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to root_path
    end
  end

  private
  def user_params
    params.permit(:name, :email, :image)
  end

end
