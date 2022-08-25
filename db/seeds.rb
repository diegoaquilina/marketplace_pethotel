require 'faker'

puts "limpando banco de dados"
Pet.destroy_all
User.destroy_all
Location.destroy_all

puts "Criando banco de dados"
5.times do
  user = User.new(
    name: Faker::TvShows::GameOfThrones.character,
    email: Faker::Internet.email,
    password: "123123"
  )
  user.save!
  2.times do
    pet = Pet.new(
      name: Faker::TvShows::GameOfThrones.dragon,
      size_kg: rand(1..30),
      breed: Faker::TvShows::GameOfThrones.house
    )
    pet.user = user
    pet.save!
  end
  location = Location.new(
    address: Faker::TvShows::GameOfThrones.city,
    available: [false, true].sample,
    summary: Faker::TvShows::GameOfThrones.quote,
    home_type: rand(0..3),
    total_occupancy: rand(0..5),
    price: rand(50..200)
  )
  location.user = user
  location.save!
end


puts "usuários criados"

puts "pets criados"

puts "locations criadas"
