class RestaurantsController < ApplicationController
  before_action :set_restaurant,
  only: [ :name, :address, :phone_number, :category ]

  def index
    @restaurants = Restaurants.all
  end

  def show
    @restaurants = Restaurants.find(params[:id])
  end

  def new
    @restaurants = Restaurants.new(restaurant_params)
  end

  def edit
    params.require
  end

  private
  def restaurant_params
    params.require (:restaurant)
    .permit(:name, :address, :phone_number, :category)
  end
end
