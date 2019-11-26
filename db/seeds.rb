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

chateau_yquem = Wine.new(region:"Bordeaux", appellation:"Sauternes",cepage:"Sémillon 80% / Sauvignon 20% ",color:"liquoreux", name:"Château d'Yquem", flavour:"La robe de ce millésime 1892 présente une couleur ambre sombre aux reflets or particulièrement étincelants au passage de la lumière. Une robe incroyablement envoutante. Le nez est très dégagé, doux et d'une extrême précision, il libère des senteurs de miel et d'agrumes. Un nez gourmand et expressif. L'entrée en bouche est remarquable, opulent et massif, il délivre pour autant une très grande fraîcheur qui envahit tout le palais. La matière est exquise et légèrement grasse, sa trame aromatique est complexe, et livre des saveurs très botrytisé, des notes de miels et de figues. Une finale extraordinaire, une pointe de fraîcheur sur une longueur d'une bonne minute.", year:"1892").

domaine_perrot_minot = Wine.new(region:"Bourgogne", appellation:"Chambertin Grand Cru",cepage:" Pinot Noir 100% ",color:"rouge", name:"Domaine Perrot Minot", flavour:"La robe de ce millésime 1892 présente une couleur ambre sombre aux reflets or particulièrement étincelants au passage de la lumière. Une robe incroyablement envoutante. Le nez est très dégagé, doux et d'une extrême précision, il libère des senteurs de miel et d'agrumes. Un nez gourmand et expressif. L'entrée en bouche est remarquable, opulent et massif, il délivre pour autant une très grande fraîcheur qui envahit tout le palais. La matière est exquise et légèrement grasse, sa trame aromatique est complexe, et livre des saveurs très botrytisé, des notes de miels et de figues. Une finale extraordinaire, une pointe de fraîcheur sur une longueur d'une bonne minute.", year:"2016").

domaine_roches_neuves = Wine.new(region:"Loire", appellation:"Saumur",cepage:"Chenin 100%",color:"blanc", name:"Domaine des roches neuves", flavour:, year:"2016").

mas_de_cadenet = Wine.new(region:"Provence", appellation:"Côtes de Provence Sainte Victoire",cepage:"Grenache 50% / Cinsault 40% / Syrah 10% ",color:"rosé", name:"Mas de Cadenet", flavour:"La robe de ce Mas de Cadenet est d’un superbe rose pâle éclatant. Les senteurs de sorbet de framboise relevé d'un trait de citron de menton, gorgé de soleil, ainsi que d'un soupçon de menthe poivrée, presque imperceptible, sont un ravissement sensoriel inédit. La chair juteuse d'un pomelos, la douce odeur du panier de poires cueillies sur l'instant", year:"2017").



chateau_margaux.save!
chateau_yquem.save!
chateau_perrot_minot.save!
chateau_roches_neuves.save!
chateau_de_cadenet.save!


# Tastings
puts "==========================="
puts "Creating tastings"
puts "==========================="

tasting_1 = Tasting.new(wine_id: chateau_margaux, content:"Préparez vos papilles et allez déguster un le Château Margaux 2016, Premier Grand Cru Classé du Médoc.", title:"Dégustation d'un Premier Grand Cru classé du Médoc", user_id: alice, rating: 5)

tasting_2 = Tasting.new(wine_id: chateau_yquem, content:"Si vous avez 60000€ dans vos poches, allez déguster le Château Yquem 1892. Bonne chance pour trouver la bouteille.", title:"Dégustation du château d'yquem, 1er Grand Cru Supérieur", user_id: bob, rating: 4)

tasting_3 = Tasting.new(wine_id: chateau_perrot_minot, content:"Si vous avez 60000€ dans vos poches, allez déguster le Château Yquem 1892. Bonne chance pour trouver la bouteille.", title:"Dégustation du château d'yquem, 1er Grand Cru Supérieur", user_id: charlie, rating: 3)

tasting_1.save!
tasting_2.save!
tasting_3.save!
