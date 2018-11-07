class BoxesController < ApplicationController
  def index
    @boxes = Box.all
  end

  def new
    @box = Box.new
  end

  def show
    @box = Box.find(params[:id])
  end

end
