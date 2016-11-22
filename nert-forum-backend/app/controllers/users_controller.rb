class UsersController < ApplicationController

  def index
    render :json => User.all, status: 200
  end

  def create
    user = User.create(user_params)

    if user.valid?
      render :json => user, status: 201
    else
      render :json => {error: "User validation failed"}, status: 400
    end
  end

  def show
    user = User.find(params[:id])

    render :json => user, status: 200
  end

  def edit
    user = User.find(params[:id])

    render :json => user, status: 200
  end

  def update
    user = User.find(params[:id])

    if user.update_attributes(user_params)
      render :json => {success: "User updated successfully"}, status: 204
    else
      render :json => {error: "Failed to update User"}, status: 400
    end
  end

  def destroy
    user = User.find(params[:id])
    if user.destroy
      render :json => {success: "User deleted successfully"}, status: 200
    else
      render :json => {error: "User deletion failed"}, status: 400
    end
  end

  private

  def user_params
    # params.require(:data).require(:attributes).permit(:name, :email, :neighborhood, :image, :password)
    params.require(:user).permit(:name, :email, :neighborhood, :image, :password)
  end

end
