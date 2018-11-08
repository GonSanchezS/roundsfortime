class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.friendly.find(params[:id])
    @cities = City.all
    @boxes = @city.boxes
    @boxes_count = @boxes.count.to_s
  end

end
