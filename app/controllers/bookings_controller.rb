class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user
  before_action :find_booking, only: [ :confirmation, :request ]
  before_action :find_bear, only: [ :confirmation, :request ]

  def confirmation
    if @booking.update(status: "confirmed")
      redirect_to booking_path(@booking), notice: 'Booking confirmed'
    else
      render 'confirmation', status: :unprocessable_entity
    end
  end

  def request
    if @booking.update(status: "requested")
      redirect_to booking_path(@booking), notice: 'Booking request sent'
    else
      render 'request', status: :unprocessable_entity
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
