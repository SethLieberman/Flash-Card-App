class QuizzesController < ApplicationController

	#authenticate that user is an admin before touching any quiz actions(Devise helper)
	before_action :authenticate_admin!

	#for showing all quizzes
	def index
		@quizzes = Quiz.all
	end

	#action for a new quiz for the view (quiz/new.html.erb)
	def new
		@quiz = Quiz.new
	end

	#creating a new quiz
	def create
		@quiz = Quiz.new
		#create the quiz
		@quiz = Quiz.create(quiz_params)
  	#redirections if quiz was saved or not along with flash messaging
  	if @quiz.save
    		flash[:notice] = "Quiz was created"
    		#redirect to the home index page
    		redirect_to root_path
  	else
  		flash[:alert] = "Something went wrong."
    		redirect_to root_path
  	end
  end

	#for showing the currently selected quiz
  	def show
  		@quiz = Quiz.find(params[:id])
  	end

	#editing an already created quiz
  	def edit
		@quiz = Quiz.find(params[:id])
  	end

  	#updating an already created quiz
  	def update
  		@quiz = Quiz.find(params[:id])
  		if @quiz.update_attributes(quiz_params)
  			flash[:notice] ="Quiz was updated"
  			redirect_to root_path
  		else
  			flash[:alert] = "Something went wrong."
  			redirect_to root_path
  		end
  	end

    def destroy
    #assign @quiz to the current quiz
    @quiz = Quiz.find(params[:id])
    #if succesful display message
      if @quiz.destroy
        flash[:notice] = "Quiz was deleted"
        #redirect to quiz index
        redirect_to root_path
      else
        flash[:alert] = "Something went wrong."
        redirect_to root_path
      end
    end
	
	#strong params
	private 

	#require the params of quiz
	def quiz_params 
    params.require(:quiz).permit(:level_id, :name)
  end
   
end
