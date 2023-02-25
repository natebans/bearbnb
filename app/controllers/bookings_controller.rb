class BookingsController < ApplicationController
  # before_action :authenticate_user!
  before_action :find_booking, only: [ :confirmation, :request, :show, :destroy ]
  before_action :find_bear, only: [ :confirmation, :request ]
  before_action :find_user, only: :destroy

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bear = find_bear
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking request successful'
    else
      render 'request', status: :unprocessable_entity
    end
  end

  def booking_request
  end

  def confirmation
    if @booking.update(confirmed)
     redirect_to booking_path(@booking), notice: 'Booking confirmed'
    else
     render 'confirmation', status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to user_path(@user)
  end

  private

  def find_bear
    @bear = Bear.find(params[:bear_id])
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def find_user
    @user = User.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :confirmed, :user_id, :bear_id)
  end
end
