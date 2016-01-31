class CardsController < ApplicationController
  def new
  end

  def edit
  end

  def show
  end

  def index
  end

   private 

  def card_params 
    params.require(:card).permit(:question, :answer)
  end
end
