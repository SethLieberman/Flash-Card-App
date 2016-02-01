class CardsController < ApplicationController

  #authenticate that user is an admin before touching any card actions(Devise helper)
  before_action :authenticate_admin!

  #for showing all the cards
  def index
    @card = Card.all
  end

  #action for a new card for the view (card/new.html.erb)
  def new
    @card = Card.new
  end

  #creating a new card
  def create
    @card = Card.new
    #create the card
    @card.create(card_params)
    #redirections if card was saved or not along with flash messaging
    if @card.save
      flash[:notice] = "Car was created"
      #redirect to the cards index page
      redirect_to cards_url
    else
      flash[:alert] = "Something went wrong."
      redirect_to cards_url
    end
  end

  #for showing the currently selected card
  def show
    # @card = 
  end

  #editing an already created card
  def edit
    # @card = 
  end

  

  
  #strong params
  private 

  #require the params of card and permit both question and answer to be written in DB
  def card_params 
    params.require(:card).permit(:question, :answer)
  end
end
