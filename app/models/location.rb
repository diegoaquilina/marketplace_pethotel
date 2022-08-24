class Location < ApplicationRecord
  belongs_to :user

  HOME_TYPE = ["casa", "apartamento", "canil"]
end
