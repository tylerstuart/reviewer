class RestaurantsController < ApplicationController
  def new
  	@restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id]) 
  end

  def index
  	@restaurants = Restaurant.all 
  end
end
