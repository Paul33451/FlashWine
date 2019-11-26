# Users
puts "==========================="
puts "Creating Users"
puts "==========================="

alice = User.new(first_name:"Alice", last_name:"Denis", user_name:"Aliçounette", email:"alice@gmail.com", password: "azerty", score:"")

bob = User.new(first_name:"Bob", last_name:"Lebricoleur", user_name:"Boby", email:"bob@gmail.com", password: "azerty", score:"")

charlie = User.new(first_name:"charlie", last_name:"Ztheron", user_name:"charleazy", email:"charlie@gmail.com", password: "azerty", score:"")

dede = User.new(first_name:"Dédé", last_name:"Lecochon", user_name:"Dédé", email:"dédé@gmail.com", password: "azerty", score:"")

eric = User.new(first_name:"Eric", last_name:"Cartman", user_name:"Riri", email:"Eric@gmail.com", password: "azerty", score:"")


alice.save!
bob.save!
charlie.save!
dede.save!
eric.save!

# Wines
puts "==========================="
puts "Creating wines"
puts "==========================="

margaux = Wine.new(region:"Bordeaux", appellation:"Margaux", cepage:"Cabernet Sauvignon / Merlot / Cabernet Franc / Petit Verdot", color:"Rouge", name:"Château Margaux", flavour:" robe rouge violacée, profonde et très colorée. Le nez est incroyable de complexité et de fraîcheur : réglisse, vanille, framboise sauvage, cassis, poivre s’y entremêlent dans un tourbillon de gourmandise. Au palais, Château Margaux 2016 est intense, marqué par des tannins mûrs et très bien intégrés.La finale est surprenante de vivacité et de longueur, avec une buvabilité étonnante pour un vin si jeune", year:"2016")

yquem = Wine.new(region:"Bordeaux", appellation:"Sauternes", cepage:"Sémillon 80% / Sauvignon 20% ", color:"liquoreux", name:"Château d'Yquem", flavour:"La robe de ce millésime 1892 présente une couleur ambre sombre aux reflets or particulièrement étincelants au passage de la lumière. Une robe incroyablement envoutante. Le nez est très dégagé, doux et d'une extrême précision, il libère des senteurs de miel et d'agrumes. Un nez gourmand et expressif. L'entrée en bouche est remarquable, opulent et massif, il délivre pour autant une très grande fraîcheur qui envahit tout le palais. La matière est exquise et légèrement grasse, sa trame aromatique est complexe, et livre des saveurs très botrytisé, des notes de miels et de figues. Une finale extraordinaire, une pointe de fraîcheur sur une longueur d'une bonne minute.", year:"1892")

perrotminot = Wine.new(region:"Bourgogne", appellation:"Chambertin Grand Cru", cepage:" Pinot Noir 100% ", color:"rouge", name:"Domaine Perrot Minot", flavour:"La robe de ce millésime 1892 présente une couleur ambre sombre aux reflets or particulièrement étincelants au passage de la lumière. Une robe incroyablement envoutante. Le nez est très dégagé, doux et d'une extrême précision, il libère des senteurs de miel et d'agrumes. Un nez gourmand et expressif. L'entrée en bouche est remarquable, opulent et massif, il délivre pour autant une très grande fraîcheur qui envahit tout le palais. La matière est exquise et légèrement grasse, sa trame aromatique est complexe, et livre des saveurs très botrytisé, des notes de miels et de figues. Une finale extraordinaire, une pointe de fraîcheur sur une longueur d'une bonne minute.", year:"2016")

rochesneuves = Wine.new(region:"Loire", appellation:"Saumur", cepage:"Chenin 100%", color:"blanc", name:"Domaine des roches neuves", flavour: "Très bonne flavour ça !!!", year:"2016")

masdecadenet = Wine.new(region:"Provence", appellation:"Côtes de Provence Sainte Victoire", cepage:"Grenache 50% / Cinsault 40% / Syrah 10% ", color:"rosé", name:"Mas de Cadenet", flavour:"La robe de ce Mas de Cadenet est d’un superbe rose pâle éclatant. Les senteurs de sorbet de framboise relevé d'un trait de citron de menton, gorgé de soleil, ainsi que d'un soupçon de menthe poivrée, presque imperceptible, sont un ravissement sensoriel inédit. La chair juteuse d'un pomelos, la douce odeur du panier de poires cueillies sur l'instant", year:"2017")



margaux.save!
yquem.save!
perrotminot.save!
rochesneuves.save!
masdecadenet.save!


# Tastings
puts "==========================="
puts "Creating tastings"
puts "==========================="

review_1 = Review.new(wine_id: 1, content:"Préparez vos papilles et allez déguster un le Château Margaux 2016, Premier Grand Cru Classé du Médoc.", user_id: 1, rating: 5)

review_2 = Review.new(wine_id: 2, content:"Si vous avez 60000€ dans vos poches, allez déguster le Château Yquem 1892. Bonne chance pour trouver la bouteille.", user_id: 2, rating: 4)

review_3 = Review.new(wine_id: 3, content:"Si vous avez 60000€ dans vos poches, allez déguster le Château Yquem 1892. Bonne chance pour trouver la bouteille.", user_id: 3, rating: 3)

review_1.save!
review_2.save!
review_3.save!


puts "==========================="
puts "Tout bon !!!!!"
puts "==========================="
