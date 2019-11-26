# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





Service.create!(name: 'Netflix Premium',  number_of_places: '4', total_price: '14', category: 'VOSD')
Service.create!(name: 'Netflix Standar',  number_of_places: '2', total_price: '10', category: 'VOSD')
Service.create!(name: 'OCS',              number_of_places: '4', total_price: '12', category: 'VOSD')
Service.create!(name: 'Spotify family',   number_of_places: '6', total_price: '14', category: 'Music')
Service.create!(name: 'Deezer Premium',   number_of_places: '6', total_price: '14', category: 'Music')
Service.create!(name: 'Apple TV Premium', number_of_places: '4', total_price: '12', category: 'VOSD')
