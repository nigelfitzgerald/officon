class OfficesController < ApplicationController

  def index
    @offices = offices.all
  end

end
