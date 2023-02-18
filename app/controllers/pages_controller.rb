class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @bears = Bear.all
  end
end

