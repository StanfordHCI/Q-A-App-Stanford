class PagesController < ApplicationController
  skip_before_filter :authenticate_user!

  def home
  end

  def login
    redirect_to user_path(current_user) if user_signed_in?
  end

end
