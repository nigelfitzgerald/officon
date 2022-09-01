class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = Booking.where(user: current_user)
  end


  def show
    @booking = Booking.find(params[:id])
  end


  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @office = Office.find(params[:office_id])
    @booking.office = @office
    if @booking.save
      redirect_to bookings_path, notice: "Your booking is confirmed."
    else
      render "offices/show", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
