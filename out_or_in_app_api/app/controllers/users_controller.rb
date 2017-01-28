class UsersController < ApplicationController

  # create - POST
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # update - PUT
  # destroy - DELETE

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
