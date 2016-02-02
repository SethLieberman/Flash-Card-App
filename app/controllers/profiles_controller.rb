class ProfilesController < ApplicationController
	
  #creating a new profile
  def create
    @profile = Profile.new
    #create the profile
    @profile = Profile.create(profile_params)
    #update the newly created profile with the current user who created it
    Profile.last.update(user_id: current_user.id)
    #redirections if profile was saved or not along with flash messaging
    if @profile.save
      flash[:notice] = "Profile was created"
      #redirect to the home index page
      redirect_to root_path
    else
      flash[:alert] = "Something went wrong."
      redirect_to root_path
    end
  end

  #for showing the currently selected profile
  def show
    @profile = Profile.find(params[:id])
  end

  #action for view for editing an already created profile
  def edit
    #set @profile to the current profile, which was linked from the home index view
    @profile = Profile.find(params[:id])  
  end

  #action for updating a profile
  def update
    @profile = Profile.find(params[:id])
   #update the profile with the submitted params
    if @profile.update(profile_params)
    #if succesful display message
      flash[:notice] = "Your profile was updated"
      #redirect to the user's profile page
      redirect_to root_path
    else
      #if something went wrong, redirect to that profile's page
      flash[:alert] = "Something went wrong."
      redirect_to root_path
    end
  end

  #action for destroying a profile
  def destroy
    #assign @profile to the current profile
    @profile = Profile.find(params[:id])
    #if succesful display message
    if @profile.destroy
      flash[:notice] = "Profile was destroyed"
      #redirect to home index
      redirect_to profile_path
    else
      flash[:alert] = "Something went wrong."
      redirect_to edit_profile_path
    end
  end

  
  #strong params
  private 

  #require the params of card and permit both question and answer to be written in DB
  def profile_params 
    params.require(:profile).permit(:fname, :lname, :user_id, :credibility, :level, :username, :user_id)
  end
end
