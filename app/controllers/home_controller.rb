class HomeController < ApplicationController
  def index
  	@cards = Card.all
  	@users = User.all
  end
  
end
