class BearsController < ApplicationController
  before_action :find_bear, only: [:edit, :update, :destroy, :show]
  def index
    @bears = Bear.all
  end

  def show
    @booking = Booking.new
    # @bear.geocoded
    # @markers = @flats.geocoded.map do |flat|
    #   {
    #     lat: flat.latitude,
    #     lng: flat.longitude
    #   }
    # end
  end

  def new
    @bear = Bear.new
  end

  def create
    @bear = Bear.new(bear_params)
    if @bear.save
      redirect_to bear_path(@bear)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @bear.update(bear_params)
      redirect_to bear_path(@bear)
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @bear.destroy
    redirect_to root_path
  end

  private

  def find_bear
    @bear = Bear.find(params[:id])
  end

  def bear_params
    params.require(:bear).permit(:name, :color, :size, :picture_url, :location, :description, :price, :quantity, :image, :photo)
  end
end
