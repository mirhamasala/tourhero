class Spot < ApplicationRecord
  belongs_to :city
  has_many :tours, through: :tour_stops
end
