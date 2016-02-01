class UsersController < ApplicationController
 
  def index
  	@cards = Card.all
    @user = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
  	@user = User.new(user_params)
    #create the quiz
    @user.create(user_params)
      #redirections if quiz was saved or not along with flash messaging
      if @user.save
          flash[:notice] = "User was created"
      else
        flash[:alert] = "Something went wrong."
      end
    end
  end

  private
  def user_params 
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
