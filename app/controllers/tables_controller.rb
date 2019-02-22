class TablesController < ApplicationController
  before_action :find_table, only: [:destroy]
  before_action :find_restaurant

  def index
    @tables = @restaurant.tables.by_number 
  end

  def new 
    @table = Table.new(restaurant_id: @restaurant.id)
  end

  def create 
    @table = Table.new(table_params)

    if @table.save
      redirect_to tables_path(restaurant_id: @restaurant.id), notice: "Table created"
    else
      render :new
    end
  end

  def destroy 
    @table.destroy
    redirect_to tables_path(restaurant_id: @restaurant.id), notice: "Table deleted"
  end

  private 

  def table_params
    params.require(:table).permit(:number, :num_seats, :restaurant_id)
  end

  def find_table 
    @table = Table.find(params[:id])
  end

  def find_restaurant   
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
