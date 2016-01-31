class UsersController < ApplicationController
 
  def index
  	@cards = Card.all
  end

  def show
  end

  def create
  	@user = User.new(user_params)
  end
end
