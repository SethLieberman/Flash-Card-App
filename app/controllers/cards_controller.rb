class CardsController < ApplicationController

  #authenticate that user is an admin before touching any card actions(Devise helper)
  before_action :authenticate_admin!

  #for showing all the cards
  def index
    @cards = Card.all
  end

  #action for a new card for the view (card/new.html.erb)
  def new
    @card = Card.new
  end

  #creating a new card
  def create
    @card = Card.new
    #create the card
    @card = Card.create(card_params)
    #redirections if card was saved or not along with flash messaging
    if @card.save
      flash[:notice] = "Card was created"
      #redirect to the cards index page
      redirect_to cards_url
    else
      flash[:alert] = "Something went wrong."
      redirect_to cards_url
    end
  end

  #for showing the currently selected card
  def show
    @card = Card.find(card_params[:id])
  end

  #action for view for editing an already created card
  def edit
    #set @card to the current card, which was linked from the cards index view
    @card = Card.find(params[:id])
    
  end

  #action for updating a card
  def update
    @card = Card.find(params[:id])
   #update the card with the submitted params
    if @card.update(card_params)
    #if succesful display message
      flash[:notice] = "Card was updated"
      #redirect to the that card's page
      redirect_to card_url
    else
      #if something went wrong, redirect to that card's page
      flash[:alert] = "Something went wrong."
      redirect_to card_url
    end
  end

  #action for destroying a card
  def destroy
    #assign @card to the current card
    @card = Card.find(params[:id])
    #if succesful display message
    if @card.destroy
      flash[:notice] = "Card was destroyed"
      #redirect to cards index
      redirect_to cards_url
    else
      flash[:alert] = "Something went wrong."
      redirect_to cards_url
    end
  end

  
  #strong params
  private 

  #require the params of card and permit both question and answer to be written in DB
  def card_params 
    params.require(:card).permit(:question, :answer, :level_id)
  end
end
