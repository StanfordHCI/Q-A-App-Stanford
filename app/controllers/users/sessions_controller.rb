class Users::SessionsController < Devise::SessionsController

  def new
    redirect_to login_path, alert: flash[:alert]
  end

end
