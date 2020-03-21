class TourStop < ApplicationRecord
  belongs_to :tour
  belongs_to :spot

  def self.in_tour(tour)
    where(tour: tour)
  end
end
