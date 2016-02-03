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

    #load a set of cards method
    card_load
  end

  #method to load a set of cards
  def card_load
    #creates an array of shuffled cards from that level
    #using the gon gem, converts this into JSON with name cardDisplay
    #can now access in JS file
    #make use of gon.watch to reload var without reloading page
    gon.cardDisplay = Level.find(1).cards.shuffle
  end

  def find_card(tag)
    @findPrivateCard = PrivateCard.where(tag: tag)
  end

end
