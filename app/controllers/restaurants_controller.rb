class RestaurantsController < ApplicationController
  before_action :set_restuarant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_param)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  private

  def set_restuarant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_param
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
