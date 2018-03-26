class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @boxes = @city.boxes
    @boxes_count = @boxes.count.to_s
  end
end
