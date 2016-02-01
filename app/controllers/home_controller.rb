class HomeController < ApplicationController
  def index
  	@cards = Card.all
  	@users = User.all
  	@card = Card.new
  end

end
