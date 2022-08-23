class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :location
  belongs_to :pet
end
