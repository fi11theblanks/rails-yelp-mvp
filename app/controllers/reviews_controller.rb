class ReviewsController < ApplicationController
  private
  def review_params
    @restaurant = Restaurant.find(params[restaurant_id])
  end

  def review_params
    @restaurant = Restaurant.find(params[restaurant_id])
  end
end
