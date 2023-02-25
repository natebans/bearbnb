class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @bears = Bear.all
  end

  def profile
    @user = current_user
    @bear = Bear.new
  end


end
