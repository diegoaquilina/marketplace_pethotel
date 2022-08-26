require 'faker'

puts "limpando banco de dados"
Reservation.destroy_all
Pet.destroy_all
Location.destroy_all
User.destroy_all

puts "Criando banco de dados"
5.times do
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "123456789",
    address: "São Paulo"
  )
  user.save!
  2.times do
    pet = Pet.new(
      name: Faker::TvShows::GameOfThrones.dragon,
      size_kg: Pet::SIZE_KG.sample,
      breed: Pet::BREED.sample,
      weight: rand(1..40)
    )
    pet.user = user
    pet.save!
  end
end


puts "usuários criados"

puts "pets criados"

puts "locations criadas"
