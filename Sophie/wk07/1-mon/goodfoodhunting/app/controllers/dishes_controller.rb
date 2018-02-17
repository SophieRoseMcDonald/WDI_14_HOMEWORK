class DishesController < ApplicationController

  def index
    @dishes = Dish.all
  end

  def new
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def create
    dish = Dish.new
    dish.title = params[:title]
    dish.save
    redirect_to '/dishes'
  end
end
