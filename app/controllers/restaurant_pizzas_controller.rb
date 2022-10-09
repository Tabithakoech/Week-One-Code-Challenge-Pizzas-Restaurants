class RestaurantPizzaController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :validation_error
    def create
      restaurant = RestaurantPizza.create!(p_param)
      render json: restaurant.pizza, status: :created
    end
  
    private
  
    def p_param
      params.permit(:price, :restaurant_id, :pizza_id)
    end
  
    def validation_error(value)
      render json: { error: value.record.errors }, status: :unprocessable_entity
    end
  end