# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)







def get_random_user(user_array) (user_array)
  nb_user = user_array.count
  user_array[rand(1..nb_user-1).round]
end


puts "begining of seed"

puts "Services destroyed"
Service.destroy_all
puts "Users Destroy"
User.destroy_all


puts "creating new users"

User.create!(email: 'remi.cordo@gmail.com', password: 'azerty', first_name: 'Rémi', last_name: 'Cordonnier', phone_number: '0688977942')
User.create!(email: 'delphine@gmail.com', password: 'azerty', first_name: 'Delphine', last_name: 'Cordonnier', phone_number: '0677333977')
User.create!(email: 'antoine@gmail.com', password: 'azerty', first_name: 'Remi', last_name: 'Lemaire', phone_number: '067711977')
User.create!(email: 'martin@hotmail.com', password: 'azerty', first_name: 'Martin', last_name: 'Dutilleul', phone_number: '06723388977')
User.create!(email: 'alex56@gmail.com', password: 'azerty', first_name: 'bouba', last_name: 'pfrt', phone_number: '0677889977')
User.create!(email: 'duroyon@gmail.fr', password: 'azerty', first_name: 'Delphine', last_name: 'Dubois', phone_number: '0677889977')
User.create!(email: 'Henripfr@gmail.com', password: 'azerty', first_name: 'Delphine', last_name: 'derujh', phone_number: '067788227')
User.create!(email: 'Bouba@gmail.com', password: 'azerty', first_name: 'bouba', last_name: 'arlou', phone_number: '0677889977')
User.create!(email: 'Sadju@gmail.com', password: 'azerty', first_name: 'Daju', last_name: 'Massoni', phone_number: '0611189977')

puts "finished"

puts "Creating services"

Service.create!(name: 'Netflix Premium',  number_of_places: '4', total_price: '14', category: 'VOSD')
Service.create!(name: 'Netflix Standard', number_of_places: '2', total_price: '10', category: 'VOSD')
Service.create!(name: 'OCS',              number_of_places: '4', total_price: '12', category: 'VOSD')
Service.create!(name: 'Spotify family',   number_of_places: '6', total_price: '14', category: 'Music')
Service.create!(name: 'Deezer Premium',   number_of_places: '6', total_price: '14', category: 'Music')
Service.create!(name: 'Apple TV Premium', number_of_places: '4', total_price: '12', category: 'VOSD')


puts "finished"








