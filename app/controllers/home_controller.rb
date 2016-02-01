class HomeController < ApplicationController
  def index
  	#the instance vars needed to display information on the home index page
  	@cards = Card.all
  	@card = Card.new
  	#users
  	@users = User.all
  	#public cards
  	@publicCards = PublicCard.all
  	@publicCard = PublicCard.new
  	#quizzes
  	@quizzes = Quiz.all
  	@quiz = Quiz.new
  end

end
