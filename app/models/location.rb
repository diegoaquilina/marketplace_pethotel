class Location < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  
  HOME_TYPE = ["casa", "canil", "apartamento", "chácara / Fazenda"]
end
