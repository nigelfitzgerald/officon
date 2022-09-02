class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @offices = Office.where("address ILIKE?", "%St Pierre%")
  end
end
