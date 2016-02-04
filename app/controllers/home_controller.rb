class HomeController < ApplicationController
  # respond_to :html, :json, :only => [:card_load]
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
    User.all
        puts "*((*(*(*(**(**("

    gon.file = "Hello"
    gon.push({
      :user_id => 1,
      :user_role => "admin"
      })

    puts "*((*(*(*(**(**((**(* GON: #{gon.all_variables}"

    # Level.find(params[:cardLevel]).cards.shuffle
    # @cards= Level.find(params[:cardLevel]).cards.shuffle
    # gon.richard = 100
    # @wobble = "hello"
    # puts gon.watch.cardDisplay
    # render json: gon.cardDisplay

    # @my_ajax_var = {some: 'info'}.to_json
    # redirect_to root_path
  end


end
