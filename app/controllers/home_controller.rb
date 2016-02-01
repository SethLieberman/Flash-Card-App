class HomeController < ApplicationController
  def index
  	#the instance vars needed to display information on the home index page
  	@cards = Card.all
  	@users = User.all
  	@card = Card.new
  	@publicCards = PublicCard.all
  	@publicCard = PublicCard.new
  end

end
