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
    #set the counter to the first card in the array
    @counter = 0
    @filler = "hello"
  end

  #method to load a set of cards
  def card_load
    @cardDisplay = Level.find(1).cards.shuffle
  end

  #action to update the counter for the next and back button
  def counter_next
    # RuntimeError - In order to use respond_with, first you need 
    # to declare the formats your controller responds to in the class level.:
    @counter = 0
    respond_with(@counter+=1)
  end

  def counter_back
    respond_with(@counter-=1)
  end

  def find_card(tag)
    @findPrivateCard = PrivateCard.where(tag: tag)
  end

end
