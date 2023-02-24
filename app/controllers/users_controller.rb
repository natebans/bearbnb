class UsersController < ApplicationController
  before_action :set_bear, only: :show

  def show
  end

  private

  def set_bear
    @bear = Bear.find(params[:id])
  end
end
