class UsersController < ApplicationController
  # before_action :set_bear, only: :show
  before_action :set_user, only: [:show, :update]

  def show
    authorize @user
  end

  def update
    authorize @user

    if @user.update!(user_params)
      redirect_to user_path(@user)
    else
      render 'devise/registrations/edit', status: :unprocessable_entity
    end
  end

  private

  def set_bear
    @bear = Bear.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
