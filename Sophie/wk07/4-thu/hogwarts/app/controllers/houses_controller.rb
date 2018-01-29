class HousesController < ApplicationController
  def index
    @house = House.all
    return @house
  end
  #
  def new
   @house = House.new
  end

  def show
    @house = House.find_by(id:params[:id])
  end
end
