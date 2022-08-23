class User < ApplicationRecord
  has_many :pets
  has_many :reservations
  has_many :locations
end
