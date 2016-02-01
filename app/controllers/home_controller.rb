class HomeController < ApplicationController
  def index
  	@cards = Card.all
  end
end
