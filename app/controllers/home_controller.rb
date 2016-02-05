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
      x = current_user.profile.level
      @quizTake = Quiz.find(x + 1)
      @profile = current_user.profile
    end
    #questions
    @question = Question.new

    
  end

  def find_card(tag)
    @findPrivateCard = PrivateCard.where(tag: tag)
  end

  def card_load
    #this basically says respond with this variable and go to the root_path
    gon.watch.cardDisplay = Level.find(params[:cardLevel]).cards.shuffle
    @cards= Level.find(params[:cardLevel]).cards.shuffle
    gon.richard = 100
    @wobble = "hello"
    # puts gon.watch.cardDisplay
    # render json: gon.cardDisplay

    # @my_ajax_var = {some: 'info'}.to_json
  end


end
