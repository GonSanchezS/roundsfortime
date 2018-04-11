class StaticPagesController < ApplicationController
  def index
    @cities = City.all
    @city = City.find(params[:id])
  end

  def show

  end
end
