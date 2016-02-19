class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_sign_up_params, only: [:create]
  before_filter :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create 
    super
    #create a default profile for the user
    Profile.create(fname: "", lname: "", credibility: 0, level: 0, username: "", user_id: User.last.id, avatar: File.new("app/assets/images/missing1.png"))
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
    @user = User.find(params[:id])
  end

  # DELETE /resource
  # When user deletes himself
  def destroy
    super
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to root_url, notice: "User deleted."
    end
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  def cancel
    super
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.for(:sign_up) << :attribute
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.for(:account_update) << :attribute
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    super(resource)
  end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    super(resource)
  end
end
