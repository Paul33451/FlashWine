
# Users
puts "==========================="
puts "Creating Users"
puts "==========================="

alice = User.new(first_name:"Alice", last_name:"Denis", user_name:"Aliçounette", email:"alice@gmail.com", password: "azerty", score: 100)

bob = User.new(first_name:"Bob", last_name:"Lebricoleur", user_name:"Boby", email:"bob@gmail.com", password: "azerty", score: 300)

charlie = User.new(first_name:"charlie", last_name:"Ztheron", user_name:"charleazy", email:"charlie@gmail.com", password: "azerty", score: 500)

dede = User.new(first_name:"Dédé", last_name:"Lecochon", user_name:"Dédé", email:"dédé@gmail.com", password: "azerty", score: 700)

eric = User.new(first_name:"Eric", last_name:"Cartman", user_name:"Riri", email:"Eric@gmail.com", password: "azerty", score: 900)


alice.save!
bob.save!
charlie.save!
dede.save!
eric.save!

# Wines
puts "==========================="
puts "Creating wines"
puts "==========================="

margaux = Wine.new(region:"Bordeaux", appellation:"Margaux", cepage:"Cabernet Sauvignon / Merlot / Cabernet Franc / Petit Verdot", color:"Rouge", name:"Château Margaux", flavour:" robe rouge violacée, profonde et très colorée. Le nez est incroyable de complexité et de fraîcheur : réglisse, vanille, framboise sauvage, cassis, poivre s’y entremêlent dans un tourbillon de gourmandise. Au palais, Château Margaux 2016 est intense, marqué par des tannins mûrs et très bien intégrés.La finale est surprenante de vivacité et de longueur, avec une buvabilité étonnante pour un vin si jeune", year:2016)

yquem = Wine.new(region:"Bordeaux", appellation:"Sauternes", cepage:"Sémillon 80% / Sauvignon 20% ", color:"liquoreux", name:"Château d'Yquem", flavour:"La robe de ce millésime 1892 présente une couleur ambre sombre aux reflets or particulièrement étincelants au passage de la lumière. Une robe incroyablement envoutante. Le nez est très dégagé, doux et d'une extrême précision, il libère des senteurs de miel et d'agrumes. Un nez gourmand et expressif. L'entrée en bouche est remarquable, opulent et massif, il délivre pour autant une très grande fraîcheur qui envahit tout le palais. La matière est exquise et légèrement grasse, sa trame aromatique est complexe, et livre des saveurs très botrytisé, des notes de miels et de figues. Une finale extraordinaire, une pointe de fraîcheur sur une longueur d'une bonne minute.", year:1892)

perrotminot = Wine.new(region:"Bourgogne", appellation:"Chambertin Grand Cru", cepage:" Pinot Noir 100% ", color:"rouge", name:"Domaine Perrot Minot", flavour:"La robe de ce millésime 1892 présente une couleur ambre sombre aux reflets or particulièrement étincelants au passage de la lumière. Une robe incroyablement envoutante. Le nez est très dégagé, doux et d'une extrême précision, il libère des senteurs de miel et d'agrumes. Un nez gourmand et expressif. L'entrée en bouche est remarquable, opulent et massif, il délivre pour autant une très grande fraîcheur qui envahit tout le palais. La matière est exquise et légèrement grasse, sa trame aromatique est complexe, et livre des saveurs très botrytisé, des notes de miels et de figues. Une finale extraordinaire, une pointe de fraîcheur sur une longueur d'une bonne minute.", year:2016)

rochesneuves = Wine.new(region:"Loire", appellation:"Saumur", cepage:"Chenin 100%", color:"blanc", name:"Domaine des roches neuves", flavour: "Très bonne flavour ça !!!", year:2016)

masdecadenet = Wine.new(region:"Provence", appellation:"Côtes de Provence Sainte Victoire", cepage:"Grenache 50% / Cinsault 40% / Syrah 10% ", color:"rosé", name:"Mas de Cadenet", flavour:"La robe de ce Mas de Cadenet est d’un superbe rose pâle éclatant. Les senteurs de sorbet de framboise relevé d'un trait de citron de menton, gorgé de soleil, ainsi que d'un soupçon de menthe poivrée, presque imperceptible, sont un ravissement sensoriel inédit. La chair juteuse d'un pomelos, la douce odeur du panier de poires cueillies sur l'instant", year:2017)



margaux.save!
yquem.save!
perrotminot.save!
rochesneuves.save!
masdecadenet.save!


# Reviews
puts "==========================="
puts "Creating Reviews"
puts "==========================="

review_1 = Review.new(wine: margaux, content:"Préparez vos papilles et allez déguster un le Château Margaux 2016, Premier Grand Cru Classé du Médoc.", user: alice, rating: 5)

review_2 = Review.new(wine: rochesneuves, content:"Si vous avez 60000€ dans vos poches, allez déguster le Château Yquem 1892. Bonne chance pour trouver la bouteille.", user: bob, rating: 4)

review_3 = Review.new(wine: masdecadenet, content:"Si vous avez 60000€ dans vos poches, allez déguster le Château Yquem 1892. Bonne chance pour trouver la bouteille.", user: charlie, rating: 3)

review_1.save!
review_2.save!
review_3.save!



# Quiz
puts "==========================="
puts "Creating Quiz"
puts "==========================="

quiz_1 = Quiz.new(title: "Quizz du niveau 1", wine: margaux)

quiz_1.save!

# Question
puts "==========================="
puts "Creating Questions"
puts "==========================="

question_1 = Question.new(content: "Quel vin n'est pas un vrai vin ?", position: 1, quiz: quiz_1)
question_2 = Question.new(content: "Pourquoi le vin c'est bon ?", position: 2, quiz: quiz_1)
question_3 = Question.new(content: "En moyenne quel est le degres d'alcool contenu dans un teille de vin ?", position: 3, quiz: quiz_1)
question_4 = Question.new(content: "Comment trouvez vous les questions ?", position: 4, quiz: quiz_1)
question_5 = Question.new(content: "J'ai plus trop d'idée de question la ...", position: 5, quiz: quiz_1)

question_1.save!
question_2.save!
question_3.save!
question_4.save!
question_5.save!


# Options
puts "==========================="
puts "Creating Options"
puts "==========================="

option_1 = Option.new(title: "Rouge", right: false, question: question_1)
option_2 = Option.new(title: "Gris", right: false, question: question_1)
option_3 = Option.new(title: "Blanc", right: false, question: question_1)
option_4 = Option.new(title: "Violet", right: true, question: question_1)
option_5 = Option.new(title: "Parce que le raisin c'est bon", right: true, question: question_2)
option_6 = Option.new(title: "Parce que c'est de toute les couleurs", right: false, question: question_2)
option_7 = Option.new(title: "Je n'aime pas le vin", right: false, question: question_2)
option_8 = Option.new(title: "C'est pas la bonne réponse alors la choisis pas", right: false, question: question_2)

option_1.save!
option_2.save!
option_3.save!
option_4.save!
option_5.save!
option_6.save!
option_7.save!
option_8.save!

puts "==========================="
puts "Creating recommendations"
puts "==========================="

recommendation_1 = Recommendation.new(wine: margaux, sender: alice, recipient: bob)
recommendation_2 = Recommendation.new(wine: yquem, sender: bob, recipient: dede)
recommendation_3 = Recommendation.new(wine: perrotminot, sender: alice, recipient: eric)
recommendation_4 = Recommendation.new(wine: rochesneuves, sender: charlie, recipient: alice)
recommendation_5 = Recommendation.new(wine: masdecadenet, sender: alice, recipient: charlie)


recommendation_1.save!
recommendation_2.save!
recommendation_3.save!
recommendation_4.save!
recommendation_5.save!


puts "==========================="
puts "Tout bon !!!!!"
puts "==========================="

