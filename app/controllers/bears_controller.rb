class BearsController < ApplicationController
  def index
    @bears = Bear.all
  end

  def show
    @bear = Bear.find(params[:id])
    @booking = Booking.new
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
    @bear = Bear.find(params[:id])
  end

  def update
    @bear = Bear.find(params[:id])
    if @bear.update(bear_params)
      redirect_to bear_path(@bear)
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @bear = Bear.find(params[:id])
    @bear.destroy
    redirect_to root_path
  end

  private
  def bear_params
    params.require(:bear).permit(:name, :color, :size, :picture_url, :location, :description, :price, :quantity, :image, :photo)
  end
end
