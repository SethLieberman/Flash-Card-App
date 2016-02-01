class HomeController < ApplicationController
  def index
  	@cards = Card.all
  	@users = User.all
  	@card = Card.new
  	@quizzes = Quiz.all
  	@quiz = Quiz.new
  end

end
