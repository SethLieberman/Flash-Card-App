class HomeController < ApplicationController
  # respond_to :html, :json, :only => [:card_load]
  def index

    
  end

  def find_card(tag)
    @findPrivateCard = PrivateCard.where(tag: tag)
  end

  def card_load
    #this basically says respond with this variable and go to the root_path



    gon.cards =  Level.find(params[:cardLevel]).cards.shuffle


    puts "*((*(*(*(**(**((**(* GON: #{gon.all_variables}"

    # Level.find(params[:cardLevel]).cards.shuffle
    # @cards= Level.find(params[:cardLevel]).cards.shuffle
    # gon.richard = 100
    # @wobble = "hello"
    # puts gon.watch.cardDisplay
    # render json: gon.cardDisplay

    # @my_ajax_var = {some: 'info'}.to_json
    # redirect_to loaded_path

  end



end
