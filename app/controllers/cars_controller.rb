class CarsController < ApplicationController
  def index
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    creation_message = "#{@car.year} #{@car.make} #{@car.model} has been created"
    redirect_to root_path,
      notice: creation_message
  end

  def car_params
    params.require(:car).permit(:make, :model, :year, :price)
  end
end
