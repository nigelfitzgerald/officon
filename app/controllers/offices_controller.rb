class OfficesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      @offices = Office.search_by_title_and_description(params[:query])
    else
      @offices = Office.all
    end

    @markers = @offices.geocoded.map do |office|
      {
        lat: office.latitude,
        lng: office.longitude,
        info_window: render_to_string(partial: "info_window", locals: {office: office})
        # image_url: helpers.asset_url("REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS")
      }
    end
  end

  def show
    @office = Office.find(params[:id])
    @booking = Booking.new
  end

  def new
    @office = Office.new
  end

  def create
    @office = Office.new(office_params)
    @office.user = current_user
    if @office.save
      redirect_to offices_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @office = Office.find(params[:id])
  end

  def update
    @office = Office.find(params[:id])
    @office.update(office_params)
    if @office.save
      redirect_to
    else
      render :new
    end
  end

  def destroy
    @office = Office.find(params[:id])
    @office.destroy
    redirect_to offices_path, status: :see_other
  end

  private

  def office_params
    params.require(:office).permit(:title, :description, :surface, :price, photo: [])
  end
end
