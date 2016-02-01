class PublicCardsController < ApplicationController

  #creating a new public card
  def create
    @publicCard = PublicCard.new
    #create the card
    @publicCard = PublicCard.create(public_card_params)
    #update the newly created card with the current user who created it
    PublicCard.last.update(user_id: current_user.id)
    #redirections if card was saved or not along with flash messaging
    if @publicCard.save
      flash[:notice] = "Public card was created"
      #redirect to the cards index page
      redirect_to root_path
    else
      flash[:alert] = "Something went wrong."
      redirect_to root_path
    end
  end

  #for showing the currently selected card
  def show
    @publicCard = PublicCard.find(params[:id])
  end

  #action for view for editing an already created card
  def edit
    #set @publicCard to the current card, which was linked from the cards index view
    @publicCard = PublicCard.find(params[:id])
    
  end

  #action for updating a card
  def update
    @publicCard = PublicCard.find(params[:id])
   #update the card with the submitted params
    if @publicCard.update(public_card_params)
    #if succesful display message
      flash[:notice] = "Public card was updated"
      #redirect to the that card's page
      redirect_to root_path
    else
      #if something went wrong, redirect to that card's page
      flash[:alert] = "Something went wrong."
      redirect_to root_path
    end
  end

  #action for destroying a card
  def destroy
    #assign @card to the current card
    @publicCard = PublicCard.find(params[:id])
    #if succesful display message
    if @publicCard.destroy
      flash[:notice] = "Card was destroyed"
      #redirect to cards index
      redirect_to root_path
    else
      flash[:alert] = "Something went wrong."
      redirect_to root_path
    end
  end

  
  #strong params
  private 

  #require the params of card and permit both question and answer to be written in DB
  def public_card_params 
    params.require(:public_card).permit(:question, :answer, :user_id, :tag)
  end
end
