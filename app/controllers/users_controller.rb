class UsersController < ApplicationController
  before_action :set_bear, only: :show
  before_action :set_user, only: :show

  def show
  end

  private

  def set_bear
    @bear = Bear.find(params[:id])
  end

  def set_user
    @user = User.find(params[:id])
  end
end
