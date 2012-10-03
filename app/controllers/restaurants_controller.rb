class RestaurantsController < ApplicationController
  def new
  	@restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def index
  	if params[:search].present?
      @restaurants = Restaurant.near(params[:search], 50, :order => :distance)
  	else
  	  @restaurants = Restaurant.all
  	end 
  end
end
