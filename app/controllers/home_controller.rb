class HomeController < ApplicationController
  respond_to :html, :json, :only => [:card_load]
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

    params[:cardLevel] = 1 
    

  end

  def find_card(tag)
    @findPrivateCard = PrivateCard.where(tag: tag)
  end

  def card_load
    #this basically says respond with this variable and go to the root_path
    gon.cardDisplay = Level.find(params[:cardLevel]).cards.shuffle
    puts gon.cardDisplay
    render json: gon.cardDisplay
  end


end
