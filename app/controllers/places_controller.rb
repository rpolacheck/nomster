class PlacesController < ApplicationController

  def index
    @places = Place.all
  end
  
  def page_index
    @users = User.order(:name).page params[:page]
  end

  def new
    @place = Place.new
  end

end