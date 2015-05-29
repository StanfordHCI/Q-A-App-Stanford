class Users::RegistrationsController < Devise::RegistrationsController

  def new
    redirect_to login_path, alert: flash[:alert]
  end

end
