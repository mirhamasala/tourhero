class ToursController < ApplicationController

  def show
    @tour = Tour.first
    @tour_stops = TourStop.in_tour(@tour)
  end

  private

  def tour_params
    params.require(:tour).permit(:name, :price, :rating, :length, :level, :language, :inclusion, :spot_id)
  end
end
