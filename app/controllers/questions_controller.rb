class QuestionsController < ApplicationController
  
  #creating a new question
  def create
    @question = Question.new
    #create the Question
    @question = Question.create(question_params)
    #redirections if question was saved or not along with flash messaging
    if @question.save
      flash[:notice] = "Question was created"
      #redirect to the home index page
      redirect_to root_path
    else
      flash[:alert] = "Something went wrong."
      redirect_to root_path
    end
  end

  #for showing the currently selected question
  def show
    @question = Question.find(params[:id])
  end

  #action for view for editing an already created question
  def edit
    #set @question to the current question, which was linked from the home index view
    @question = Question.find(params[:id])  
  end

  #action for updating a Question
  def update
    @question = Question.find(params[:id])
   #update the Question with the submitted params
    if @question.update(question_params)
    #if succesful display message
      flash[:notice] = "Your question was updated"
      #redirect to the home index path
      redirect_to root_path
    else
      #if something went wrong, redirect to the home index page
      flash[:alert] = "Something went wrong."
      redirect_to root_path
    end
  end

  #action for destroying a question
  def destroy
    #assign @question to the current question
    @question = Question.find(params[:id])
    #if succesful display message
    if @question.destroy
      flash[:notice] = "Question was destroyed"
      #redirect to home index
      redirect_to root_path
    else
      flash[:alert] = "Something went wrong."
      redirect_to root_path
    end
  end

  
  #strong params
  private 

  #require the params of question and permit them
  def question_params 
    params.require(:question).permit(:question, :answer, :quiz_id)
  end
end
