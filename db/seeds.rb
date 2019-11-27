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


Service.create!(name: 'Netflix Premium',  number_of_places: '4',    total_price: '14',    category: 'vosd',        description: 'Service de vosd en ligne',                      photo: 'netflix.png')
Service.create!(name: 'Netflix Standard', number_of_places: '2',    total_price: '10',    category: 'vosd',        description: 'Service de vosd en ligne',                      photo: 'netflix.png')
Service.create!(name: 'OCS',              number_of_places: '4',    total_price: '12',    category: 'vosd',        description: 'Service de vosd en ligne',                      photo: 'ocs.png')
Service.create!(name: 'Spotify family',   number_of_places: '6',    total_price: '14',    category: 'musique',     description: 'Des millions de titres à ecouter',              photo: 'spotify.png')
Service.create!(name: 'Deezer Premium',   number_of_places: '6',    total_price: '14',    category: 'musique',     description: 'Des millions de titres à ecouter',              photo: 'deezer.png')
Service.create!(name: 'Apple TV Premium', number_of_places: '4',    total_price: '12',    category: 'vosd',        description: 'Service de vosd en ligne',                      photo: 'appletv.png')
Service.create!(name: 'Amazon Prime',     number_of_places: '6',    total_price: '15',    category: 'vosd',        description: 'Service de vosd en ligne',                      photo: 'Amazon.png')
Service.create!(name: 'Youtube Premium',  number_of_places: '6',    total_price: '18',    category: 'vosd',        description: 'Service de vosd en ligne',                      photo: 'youtube.png')
Service.create!(name: 'Canal+ Serie',     number_of_places: '2',    total_price: '10',    category: 'vosd',        description: 'Service de vosd en ligne',                      photo: 'canal.png')
Service.create!(name: 'Apple music',      number_of_places: '6',    total_price: '15',    category: 'musique',     description: 'Des millions de titres à ecouter',              photo: 'apple.png')
Service.create!(name: 'Amazon Music',     number_of_places: '6',    total_price: '15',    category: 'musique',     description: 'Des millions de titres à ecouter',              photo: 'Amazon.png')
Service.create!(name: 'Amazon Prime',     number_of_places: '2',    total_price: '4',     category: 'ecommerce',  description: 'Livraison express et gratuite',                 photo: 'Amazon.png')
Service.create!(name: 'Cdiscount',        number_of_places: '2',    total_price: '2,50',  category: 'ecommerce',  description: 'Livraison express et gratuite',                 photo: 'cdiscount.png')
Service.create!(name: 'Pack Office',      number_of_places: '6',    total_price: '8,25',  category: 'logiciel',    description: 'Pack office complet ',                          photo: 'office.png')
Service.create!(name: 'Norton Premium',   number_of_places: '10',   total_price: '8,5',   category: 'logiciel',    description: 'Service VPN',                                   photo: 'norton.png')
Service.create!(name: 'CyperGhost',       number_of_places: '6',    total_price: '12',    category: 'logiciel',    description: 'Cryptez vos activités en ligne',                photo: 'cyberghost.png')
Service.create!(name: 'ZenMate',          number_of_places: '5',    total_price: '10',    category: 'logiciel',    description: 'Service VPN',                                   photo: 'zenmate.png')
Service.create!(name: 'TrustZone',        number_of_places: '2',    total_price: '8',     category: 'logiciel',    description: 'Service de transfert de données ',              photo: 'trustzone.png')
Service.create!(name: 'FSecure',          number_of_places: '2',    total_price: '5',     category: 'logiciel',    description: 'Protection de votre ordinateur ',               photo: 'fsecure.png')
Service.create!(name: 'McAfee',           number_of_places: '4',    total_price: '7,20',  category: 'logiciel',    description: 'Protection de votre ordinateur ',               photo: 'mcafee.png')
Service.create!(name: 'Pure VPN',         number_of_places: '4',    total_price: '9,60',  category: 'logiciel',    description: 'Serice VPN',                                    photo: 'purevpn.png')
Service.create!(name: 'PlayStation Plus', number_of_places: '2',    total_price: '5',     category: 'jeuvideo',  description: 'Jouez aux jeux telechargés',                    photo: 'playstation.png')
Service.create!(name: 'Xbox Live',        number_of_places: '2',    total_price: '5',     category: 'jeuvideo',  description: 'Jouez aux jeux telechargés',                    photo: 'xbox.png')
Service.create!(name: 'Nintendo Online',  number_of_places: '8',    total_price: '3',     category: 'jeuvideo',  description: 'Profitez du service Nintendo Switch Online',    photo: 'nintendo.png')
Service.create!(name: 'GooglePlay Pass',  number_of_places: '5',    total_price: '5',     category: 'jeuvideo',  description: 'Plus de 350 jeux et applications en illimité ', photo: 'google.png')
Service.create!(name: 'Apple Arcade',     number_of_places: '5',    total_price: '5',     category: 'jeuvideo',  description: 'Plus de 100 jeux en illimité ',                 photo: 'applearcade.png')
Service.create!(name: 'BlackNut',         number_of_places: '3',    total_price: '15',    category: 'jeuvideo',  description: 'Accés complet à un catalogue de 360 jeux ',     photo: 'blacknut.png')
Service.create!(name: 'Utomik',           number_of_places: '3',    total_price: '10',    category: 'jeuvideo',  description: 'De nouveaux jeux à jouer chaque semaine',       photo: 'utomik.png')
Service.create!(name: 'Apple Cloud',      number_of_places: '5',    total_price: '10',    category: 'cloud',       description: '2To d espace de stockage pour vos données',     photo: 'icloud.png')
Service.create!(name: 'Google Cloud',     number_of_places: '5',    total_price: '10',    category: 'cloud',       description: '2To d espace de stockage pour vos données',     photo: 'gcloud.png')
Service.create!(name: 'Le Parisien',      number_of_places: '2',    total_price: '6',     category: 'presse',      description: 'Le journal en version numérique',               photo: 'leparisien.png')
Service.create!(name: 'Le Figaro',        number_of_places: '5',    total_price: '20',    category: 'presse',      description: 'Le journal en version numérique',               photo: 'figaro.png')
Service.create!(name: 'Liberation',       number_of_places: '2',    total_price: '8',     category: 'presse',      description: 'Le journal en version numérique',               photo: 'liberation.png')
Service.create!(name: 'L Express',        number_of_places: '2',    total_price: '8',     category: 'presse',      description: 'Le journal en version numérique',               photo: 'lexpress.png')
Service.create!(name: 'Izneo',            number_of_places: '6',    total_price: '13',    category: 'presse',      description: 'Lisez comme vous le voulez ',                   photo: 'izneo.png')


puts "finished"

# puts "Creating subscriptions"

# Subscription.create!()

# puts "finished"







