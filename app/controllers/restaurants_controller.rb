class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:edit, :update, :destroy]

  def index 
    @restaurants = Restaurant.all
  end

  def new  
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params) 
    
    if @restaurant.save
      redirect_to restaurants_path, notice: "Restaurant successfuly created"
    else
      render :new
    end
  end

  def edit 
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurants_path, notice: "Restaurant successfuly updated" 
    else
      render :edit
    end
  end 

  def destroy 
    @restaurant.destroy
    redirect_to restaurants_path, notice: "Restaurant successfuly deleted"
  end

  private 

  def restaurant_params 
    params.require(:restaurant).permit(:name, :address, :open, :close)
  end

  def find_restaurant 
    @restaurant = Restaurant.find(params[:id])
  end
end
