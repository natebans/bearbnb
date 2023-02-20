class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_booking, only: [ :confirmation, :request ]
  before_action :find_bear, only: [ :confirmation, :request ]

  def create
    @booking = Booking.new(booking_params)
    @booking.bear = Bear.find(params[:bear_id])
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking successful'
    else
      render 'request', status: :unprocessable_entity
    end
  end


 def request

  end

  def confirmation
    if @booking.update(status: "confirmed")
     redirect_to booking_path(@booking), notice: 'Booking confirmed'
    else
     render 'confirmation', status: :unprocessable_entity
   end
  end

  private

  def find_bear
    @bear = Bear.find(params[:bear_id])
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
