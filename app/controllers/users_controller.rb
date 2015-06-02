class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :check_user, only: [:edit, :update]

  def show
  end

  def edit
  end

  def update
    success = @user.update(user_params)

    if params[:user][:password].present? || params[:user][:password_confirmation].present?
      success = @user.update(password: params[:user][:password], password_confirmation: params[:user][:password_confirmation])
    end

    respond_to do |format|
      if success
        format.html { redirect_to @user, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end

    end
  end

  private
  def set_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :website, :country, :avatar, :summary)
  end

  def check_user
    unless current_user == @user
      redirect_to root_url
    end
  end
end
