class TourStop < ApplicationRecord
  belongs_to :tour
  belongs_to :spot
end
