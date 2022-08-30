class OfficesController < ApplicationController
  def new
    @office = Office.new
  end
end
