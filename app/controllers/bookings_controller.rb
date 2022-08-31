class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = Booking.all
  end

  # def new
  #   @booking = Booking.new
  # end

  def show
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
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, notice: "Your booking was cancelled."
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
