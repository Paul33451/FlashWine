# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
puts "==========================="
puts "Creating Users"
puts "==========================="

alice = User.new(first_name:"Alice", last_name:"Denis", username:"Aliçounette", email:"alice@gmail.com", password: "azerty", score:"")

bob = User.new(first_name:"Bob", last_name:"Lebricoleur", username:"Boby", email:"bob@gmail.com", password: "azerty", score:"")

charlie = User.new(first_name:"charlie", last_name:"Ztheron", username:"charleazy", email:"charlie@gmail.com", password: "azerty", score:"")

dede = User.new(first_name:"Dédé", last_name:"Lecochon", username:"Dédé", email:"dédé@gmail.com", password: "azerty", score:"")

eric = User.new(first_name:"Eric", last_name:"Cartman", username:"Riri", email:"Eric@gmail.com", password: "azerty", score:"")


alice.save!
bob.save!
charlie.save!
dede.save!
eric.save!

# Wines
puts "==========================="
puts "Creating wines"
puts "==========================="

chateau_margaux = Wine.new(region:"Bordeaux", appellation:"Margaux",cepage:"Cabernet Sauvignon / Merlot / Cabernet Franc / Petit Verdot",color:"Rouge", name:"Château Margaux", flavour:" robe rouge violacée, profonde et très colorée. Le nez est incroyable de complexité et de fraîcheur : réglisse, vanille, framboise sauvage, cassis, poivre s’y entremêlent dans un tourbillon de gourmandise. Au palais, Château Margaux 2016 est intense, marqué par des tannins mûrs et très bien intégrés.La finale est surprenante de vivacité et de longueur, avec une buvabilité étonnante pour un vin si jeune", year:"2016")

chateau_margaux.save!

# Wines
puts "==========================="
puts "Creating wines"
puts "==========================="
