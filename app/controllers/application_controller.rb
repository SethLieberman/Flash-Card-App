class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :get_variables

  def get_variables
        #the instance vars needed to display information on the home index page
    @cards = Card.all
    @card = Card.new
    #users
    @users = User.all
    #public cards
    @publicCards = PublicCard.all
    @publicCard = PublicCard.new
    # private cards
    @privateCards = PrivateCard.all
    @privateCard = PrivateCard.new
    #quizzes
    @quizzes = Quiz.all
    @quiz = Quiz.new
    # profile
    if current_user
      @profile = current_user.profile
    end
    #questions
    @question = Question.new
  end
    
end
