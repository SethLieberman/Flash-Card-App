class UsersController < ApplicationController
 
  def index
  	@cards = Card.all
  end

  def show
  end

  def create
  	@user = User.new(user_params)
  end
  def user_params 
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
