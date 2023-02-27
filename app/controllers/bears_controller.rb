class BearsController < ApplicationController
  before_action :set_bear, only: [:show, :edit, :update, :destroy]

  def index
    @bears = Bear.all
  end

  def show
    @booking = Booking.new


    authorize @bear
    puts "userID " + current_user.id.to_s
    puts "bear " + @bear.user.id.to_s
    @showForm = current_user.id != @bear.user.id
    @markers = [ {
         lat: @bear.latitude,
         lng: @bear.longitude,
         info_window_html: render_to_string(partial: "info_window", locals: {bear: @bear}),
         marker_html: render_to_string(partial: "marker")
         }]
  end

  def new
    @bear = Bear.new
    authorize @bear
  end

  def create
    @bear = Bear.new(bear_params)
    @bear.user = current_user

    authorize @bear

    if @bear.save
      redirect_to bear_path(@bear)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    authorize @bear
  end

  def update
    authorize @bear

    if @bear.update(bear_params)
      redirect_to bear_path(@bear)
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    authorize @bear
    @bear.destroy
    redirect_to root_path
  end

  private

  def set_bear
    @bear = Bear.find(params[:id])
  end

  def bear_params
    params.require(:bear).permit(:name, :color, :size, :picture_url, :location, :description, :price, :photo)
  end
end
