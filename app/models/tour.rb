class Tour < ApplicationRecord
  has_many :spots, through: :tour_stops
end
