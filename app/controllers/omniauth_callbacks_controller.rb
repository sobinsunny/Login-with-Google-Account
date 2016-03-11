class OmniauthCallbacksController < ApplicationController
  
  def google_oauth2

     
    @user = User.find_for_google_oauth2(request.env["omniauth.auth"], current_user)
 
    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
      redirect_to @user
    else
      session["devise.google_data"] = request.env["omniauth.auth"]
      User
    end
  end
  
end
