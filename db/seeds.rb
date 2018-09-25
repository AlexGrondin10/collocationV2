# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Collocation.destroy_all
User.destroy_all
Asset.destroy_all
Room.destroy_all
Item.destroy_all
Transaction.destroy_all
List.destroy_all

# Create colloc

richelieu = Collocation.create!(name: "Richelieu les mâles")

# Create user

nathan = User.create!(first_name: "Nathan", last_name: "Robert", phone_number: "0777787760", email: "n.robert@tbs-education.org", surname: "La femme de ménage", password:"azerty", collocation: richelieu)
jb = User.create!(first_name: "Jean-Baptiste", last_name: "Kalbusch", phone_number: "", email: "j.kalbusch@tbs-education.org", surname: "Blake", password:"azerty", collocation: richelieu)
alex = User.create!(first_name: "Alex", last_name: "Grondin", phone_number: "0689812775", email: "a.grondin@tbs-education.org", surname: "L'homme", password:"azerty", collocation: richelieu)

# Create inventory

salon = Room.create(name: "Salon", collocation: richelieu)
chambre_alex = Room.create(name: "Chambre d'Alex", collocation: richelieu)

# Create assets

lit = Asset.create(name: "Lit", price: 50, room: chambre_alex)
tv = Asset.create(name: "Tv", price: 150, room: salon)
canapé = Asset.create(name: "Canapé", price: 75, room: salon)