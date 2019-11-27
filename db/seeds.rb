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

def get_random_service(service_array) (service_array)
  nb_service = service_array.count
  service_array[rand(1..nb_service-1).round]
end


puts "begining of seed"

puts "subscriptions destroyed"
Subscription.destroy_all
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

service_array = Service.all

netflix_premium = Service.create!(name: 'Netflix Premium',  number_of_places: '4',    total_price: '14',    category: 'vosd',        description: 'Service de vosd en ligne',                      photo: 'netflix.png')
netflix_standard = Service.create!(name: 'Netflix Standard', number_of_places: '2',    total_price: '10',    category: 'vosd',        description: 'Service de vosd en ligne',                      photo: 'netflix.png')
ocs = Service.create!(name: 'OCS',              number_of_places: '4',    total_price: '12',    category: 'vosd',        description: 'Service de vosd en ligne',                      photo: 'ocs.png')
spotify_family = Service.create!(name: 'Spotify family',   number_of_places: '6',    total_price: '14',    category: 'musique',     description: 'Des millions de titres à ecouter',              photo: 'spotify.png')
deezer_premium = Service.create!(name: 'Deezer Premium',   number_of_places: '6',    total_price: '14',    category: 'musique',     description: 'Des millions de titres à ecouter',              photo: 'deezer.png')
apple_tv_premium = Service.create!(name: 'Apple TV Premium', number_of_places: '4',    total_price: '12',    category: 'vosd',        description: 'Service de vosd en ligne',                      photo: 'appletv.png')
amazon_prime_video = Service.create!(name: 'Amazon Prime Video',     number_of_places: '6',    total_price: '15',    category: 'vosd',        description: 'Service de vosd en ligne',                      photo: 'Amazon.png')
youtube_premium = Service.create!(name: 'Youtube Premium',  number_of_places: '6',    total_price: '18',    category: 'vosd',        description: 'Service de vosd en ligne',                      photo: 'youtube.png')
canal_series = Service.create!(name: 'Canal+ Serie',     number_of_places: '2',    total_price: '10',    category: 'vosd',        description: 'Service de vosd en ligne',                      photo: 'canal.png')
apple_music = Service.create!(name: 'Apple music',      number_of_places: '6',    total_price: '15',    category: 'musique',     description: 'Des millions de titres à ecouter',              photo: 'apple.png')
amazon_music = Service.create!(name: 'Amazon Music',     number_of_places: '6',    total_price: '15',    category: 'musique',     description: 'Des millions de titres à ecouter',              photo: 'Amazon.png')
amazon_prime = Service.create!(name: 'Amazon Prime',     number_of_places: '2',    total_price: '4',     category: 'ecommerce',  description: 'Livraison express et gratuite',                 photo: 'Amazon.png')
cdiscount = Service.create!(name: 'Cdiscount',        number_of_places: '2',    total_price: '2,50',  category: 'ecommerce',  description: 'Livraison express et gratuite',                 photo: 'cdiscount.png')
pack_office = Service.create!(name: 'Pack Office',      number_of_places: '6',    total_price: '8,25',  category: 'logiciel',    description: 'Pack office complet ',                          photo: 'office.png')
norton_premium = Service.create!(name: 'Norton Premium',   number_of_places: '10',   total_price: '8,5',   category: 'logiciel',    description: 'Service VPN',                                   photo: 'norton.png')
cyperghost = Service.create!(name: 'CyperGhost',       number_of_places: '6',    total_price: '12',    category: 'logiciel',    description: 'Cryptez vos activités en ligne',                photo: 'cyberghost.png')
zenmate = Service.create!(name: 'ZenMate',          number_of_places: '5',    total_price: '10',    category: 'logiciel',    description: 'Service VPN',                                   photo: 'zenmate.png')
trustzone = Service.create!(name: 'TrustZone',        number_of_places: '2',    total_price: '8',     category: 'logiciel',    description: 'Service de transfert de données ',              photo: 'trustzone.png')
fsecure = Service.create!(name: 'FSecure',          number_of_places: '2',    total_price: '5',     category: 'logiciel',    description: 'Protection de votre ordinateur ',               photo: 'fsecure.png')
mcafee = Service.create!(name: 'McAfee',           number_of_places: '4',    total_price: '7,20',  category: 'logiciel',    description: 'Protection de votre ordinateur ',               photo: 'mcafee.png')
pure_vpn = Service.create!(name: 'Pure VPN',         number_of_places: '4',    total_price: '9,60',  category: 'logiciel',    description: 'Serice VPN',                                    photo: 'purevpn.png')
playstation_plus = Service.create!(name: 'PlayStation Plus', number_of_places: '2',    total_price: '5',     category: 'jeuvideo',  description: 'Jouez aux jeux telechargés',                    photo: 'playstation.png')
xbox_live = Service.create!(name: 'Xbox Live',        number_of_places: '2',    total_price: '5',     category: 'jeuvideo',  description: 'Jouez aux jeux telechargés',                    photo: 'xbox.png')
nintendo_online = Service.create!(name: 'Nintendo Online',  number_of_places: '8',    total_price: '3',     category: 'jeuvideo',  description: 'Profitez du service Nintendo Switch Online',    photo: 'nintendo.png')
googleplay_pass = Service.create!(name: 'GooglePlay Pass',  number_of_places: '5',    total_price: '5',     category: 'jeuvideo',  description: 'Plus de 350 jeux et applications en illimité ', photo: 'google.png')
apple_arcade = Service.create!(name: 'Apple Arcade',     number_of_places: '5',    total_price: '5',     category: 'jeuvideo',  description: 'Plus de 100 jeux en illimité ',                 photo: 'applearcade.png')
blacknut = Service.create!(name: 'BlackNut',         number_of_places: '3',    total_price: '15',    category: 'jeuvideo',  description: 'Accés complet à un catalogue de 360 jeux ',     photo: 'balcknut.png')
utomik = Service.create!(name: 'Utomik',           number_of_places: '3',    total_price: '10',    category: 'jeuvideo',  description: 'De nouveaux jeux à jouer chaque semaine',       photo: 'utomik.png')
apple_cloud = Service.create!(name: 'Apple Cloud',      number_of_places: '5',    total_price: '10',    category: 'cloud',       description: '2To d espace de stockage pour vos données',     photo: 'icloud.png')
google_cloud = Service.create!(name: 'Google Cloud',     number_of_places: '5',    total_price: '10',    category: 'cloud',       description: '2To d espace de stockage pour vos données',     photo: 'gcloud.png')
le_parisien = Service.create!(name: 'Le Parisien',      number_of_places: '2',    total_price: '6',     category: 'presse',      description: 'Le journal en version numérique',               photo: 'leparisien.png')
le_figaro = Service.create!(name: 'Le Figaro',        number_of_places: '5',    total_price: '20',    category: 'presse',      description: 'Le journal en version numérique',               photo: 'figaro.png')
liberation = Service.create!(name: 'Liberation',       number_of_places: '2',    total_price: '8',     category: 'presse',      description: 'Le journal en version numérique',               photo: 'liberation.png')
express = Service.create!(name: 'L Express',        number_of_places: '2',    total_price: '8',     category: 'presse',      description: 'Le journal en version numérique',               photo: 'lexpress.png')
izneo = Service.create!(name: 'Izneo',            number_of_places: '6',    total_price: '13',    category: 'presse',      description: 'Lisez comme vous le voulez ',                   photo: 'izneo.png')


puts "finished"

puts "Creating subscriptions"

user_array = User.all

Subscription.create!(available_places: '1', identifiant: 'martinderr', password: 'azerty', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'jupatu', password: 'azertyu', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'juduq', password: 'azertyui', user: get_random_user(user_array), service: deezer_premium)
Subscription.create!(available_places: '1', identifiant: 'remico', password: 'azertyuio', user: get_random_user(user_array), service: spotify_family)
Subscription.create!(available_places: '1', identifiant: 'alaindelong', password: 'azertyuiop', user: get_random_user(user_array), service: netflix_standard)
Subscription.create!(available_places: '1', identifiant: 'alicedelice', password: 'qsdf', user: get_random_user(user_array), service: netflix_standard)
Subscription.create!(available_places: '1', identifiant: 'jakiecadillac', password: 'qsdfg', user: get_random_user(user_array), service: netflix_standard)
Subscription.create!(available_places: '1', identifiant: 'patrick', password: 'qsdfgh', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'jeanjean', password: 'qsdfghj', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'coco', password: 'qsdfghjk', user: get_random_user(user_array), service: deezer_premium)
Subscription.create!(available_places: '1', identifiant: 'mika', password: 'qsdfghjkl', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'julien', password: 'qsdfghjklm', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'louise', password: 'wxcv', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'gabriel', password: 'wxcvb', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'patricia', password: 'wxcvbn', user: get_random_user(user_array), service: spotify_family)
Subscription.create!(available_places: '1', identifiant: 'daniel', password: 'wxcvbnn', user: get_random_user(user_array), service: deezer_premium)
Subscription.create!(available_places: '1', identifiant: 'josephine', password: 'poiuy', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'mikadu62', password: 'poiuyt', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'valentinou', password: 'poiuytr', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'nicolas', password: 'poiuytre', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'maya', password: 'poiuytrez', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'zoe', password: 'poiuytreza', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'marin', password: 'mlk', user: get_random_user(user_array), service: spotify_family)
Subscription.create!(available_places: '1', identifiant: 'axel', password: 'mlkj', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'arnaud', password: 'mlkjh', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'hugo', password: 'mlkjhg', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'justine', password: 'mlkjhgf', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'christine', password: 'mlkjhgfd', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'mohammed', password: 'mlkjhgfds', user: get_random_user(user_array), service: amazon_prime_video)
Subscription.create!(available_places: '1', identifiant: 'pauline', password: 'mlkjhgfdsq', user: get_random_user(user_array), service: amazon_prime_video)
Subscription.create!(available_places: '1', identifiant: 'olivier', password: 'tre', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'killian', password: 'trez', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'zidane', password: 'treza', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'aline', password: 'trezap', user: get_random_user(user_array), service: netflix_premium)
Subscription.create!(available_places: '1', identifiant: 'claudie', password: 'trezapo', user: get_random_user(user_array), service: netflix_premium)

puts "finished"







