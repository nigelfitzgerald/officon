class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  def index
    @booking = Bookings.all
  end

  def show
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking, notice: "Your booking is confirmed."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, notice: "Your booking was cancelled."
  end

  private

  def booking_params
    params.require(:booking).permit(:name)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
