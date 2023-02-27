class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if params[:name].present?
      @bears = Bear.search_name(params[:name])
    else
      @bears = Bear.all
    end
  end

  def about
  end

  def bear_params
    params.require(:bear).permit(:name, :color, :size, :picture_url, :location, :description, :price, :photo)
  end
end
