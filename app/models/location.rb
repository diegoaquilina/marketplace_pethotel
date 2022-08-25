class Location < ApplicationRecord
  belongs_to :user

  HOME_TYPE = ["casa", "canil", "apartamento", "chácara / Fazenda"]
end
