class PrivateCardsController < ApplicationController

	  #creating a new private card
  def create
    @privateCard = PrivateCard.new
    #create the card
    @privateCard = PrivateCard.create(private_card_params)
    #update the newly created card with the current user who created it
    PrivateCard.last.update(user_id: current_user.id)
    #redirections if card was saved or not along with flash messaging
    if @privateCard.save
      flash[:notice] = "Private card was created"
      #redirect to the home index page
      redirect_to root_path
    else
      flash[:alert] = "Something went wrong."
      redirect_to root_path
    end
  end



	# creating a new private card
  def new
  	@privateCard = PrivateCard.new
    #create the card
    @privateCard = PrivateCard.create(private_card_params)
    #update the newly created card with the current user who created it
    PrivateCard.last.update(user_id: current_user.id)
    #redirections if card was saved or not along with flash messaging
    if @privateCard.save
      	flash[:notice] = "Private card was created"
        #redirect to the home index page
        redirect_to root_path
    else
    	flash[:alert] = "Something went wrong."
    	redirect_to root_path
    end
  end

  def edit
    #set @privateCard to the current card, which was linked from the home index view
    @privateCard = PrivateCard.find(params[:id])
  end

  # for showing the card
  def show
  	@privateCard = PrivateCard.find(params[:id])
  end

  def update
    @privateCard = PrivateCard.find(params[:id])
    @privateCard.update_attributes(private_card_params)
    @privateCards = PrivateCard.all

    respond_to do |page|
      page.js
    end
  end


  #action for destroying a card
  def destroy
      #assign @card to the current card
      @privateCard = PrivateCard.find(params[:id])
      #if succesful display message
      if @privateCard.destroy
      	flash[:notice] = "Card was destroyed"
        #redirect to home index
        redirect_to root_path
    else
    	flash[:alert] = "Something went wrong."
    	redirect_to root_path
    end
  end

   #require the params of card and permit both question and answer to be written in DB
   def private_card_params 
   	params.require(:private_card).permit(:question, :answer, :user_id, :tag)
   end
end
