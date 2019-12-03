puts "==========================="
puts "Destroy seed"
puts "==========================="

# puts "users"
# User.destroy_all
# puts "wine"
# Wine.destroy_all
# puts "review"
# Review.destroy_all
# Quiz.destroy_all
# Question.destroy_all
# Option.destroy_all
# # Recommendation.destroy_all

puts "==========================="
puts "Seed destroyed !!!"
puts "==========================="

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

rocher = Wine.new(region:"Bordeaux", appellation:"Saint-Emilion Grand Cru", cepage:"Merlot, Cabernet franc, Cabernet sauvignon", color:"Rouge", name:"Château du Rocher", year:2016, photo:"https://media.lepetitballon.com/catalog/product/cache/1/image/280x600/040ec09b1e35df139433887a97daa66f/c/h/chateaux-du-rocher.jpg")

mouton_cadet = Wine.new(region:"Loire", appellation:"Sauternes", cepage:"Sémillon 80% / Sauvignon 20% ", color:"rosé", name:"Mouton Cadet", year:1892, photo:"https://produits.bienmanger.com/29409-0w0h0_Mouton_Cadet_Rouge.jpg")

coteaux_bourguignons = Wine.new(region:"Bourgogne", appellation:"Coteaux Bourguignons", cepage:" Pinot Noir 100% ", color:"rouge", name:"Jean de Laurere", year:2016, photo:"https://media.lepetitballon.com/catalog/product/cache/1/image/280x600/040ec09b1e35df139433887a97daa66f/j/e/jean-de-laurere-coteaux_bourguignon-2016.jpg")

margaux = Wine.new(region:"Bordeaux", appellation:"Margaux", cepage:"Chenin 100%", color:"blanc", name:"Chateau Margaux", year:2016, photo:"https://static.millesima.com/s3/attachements/360/1001_2012NM_c/photobox/images/a_0_0_234_0_0.png")

rocher.save!
mouton_cadet.save!
coteaux_bourguignons.save!
margaux.save!



# Reviews
puts "==========================="
puts "Creating Reviews"
puts "==========================="

review_1 = Review.new(wine: margaux, content:"Préparez vos papilles et allez déguster un le Château Margaux 2016, Premier Grand Cru Classé du Médoc.", user: alice, rating: 5)

review_2 = Review.new(wine: rocher, content:"Si vous avez 60000€ dans vos poches, allez déguster le Château Rocher. Bonne chance pour trouver la bouteille.", user: bob, rating: 4)

review_3 = Review.new(wine: mouton_cadet, content:"Si vous avez 60000€ dans vos poches, allez déguster ce Château. Bonne chance pour trouver la bouteille.", user: charlie, rating: 3)

review_1.save!
review_2.save!
review_3.save!



# Quiz
puts "==========================="
puts "Creating Quiz"
puts "==========================="

quiz_1 = Quiz.new(title: "Les vins de bordeaux", wine: margaux)

quiz_2 = Quiz.new(title: "Le vin blanc", wine: margaux)

quiz_1.save!
quiz_2.save!

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

question_6 = Question.new(content: "Pourquoi le blanc est il blanc", position: 1, quiz: quiz_2)

question_6.save!

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

option_9 = Option.new(title: "42 degrés", right: false, question: question_3)
option_10 = Option.new(title: "6 degrés", right: false, question: question_3)
option_11 = Option.new(title: "12 degrés", right: true, question: question_3)
option_12 = Option.new(title: "Je sais pas et j'en rien à foutre tant que je suis saoul", right: false, question: question_3)

option_13 = Option.new(title: "Franchement cool", right: true, question: question_4)
option_14 = Option.new(title: "A l'image de cette dernière : naze", right: false, question: question_4)
option_15 = Option.new(title: "J'en sais rien je réponds au pif", right: false, question: question_4)
option_16 = Option.new(title: "Pas ouf", right: false, question: question_4)

option_17 = Option.new(title: "Normale", right: false, question: question_5)
option_18 = Option.new(title: "Plus d'idée de réponse non plus", right: false, question: question_5)
option_19 = Option.new(title: "Mais on vous aime...", right: false, question: question_5)
option_20 = Option.new(title: "...Fort", right: true, question: question_5)

option_1.save!
option_2.save!
option_3.save!
option_4.save!
option_5.save!
option_6.save!
option_7.save!
option_8.save!
option_9.save!
option_10.save!
option_11.save!
option_12.save!
option_13.save!
option_14.save!
option_15.save!
option_16.save!
option_17.save!
option_18.save!
option_19.save!
option_20.save!

option_21 = Option.new(title: "Parce que ...", right: false, question: question_6)
option_22 = Option.new(title: "A cause du raisin blanc", right: true, question: question_6)
option_23 = Option.new(title: "A cause du sulfate", right: false, question: question_6)
option_24 = Option.new(title: "Parce qu'il est plus sucré", right: false, question: question_6)

option_21.save!
option_22.save!
option_23.save!
option_24.save!

# puts "==========================="
# puts "Creating recommendations"
# puts "==========================="

# recommendation_1 = Recommendation.new(wine: rocher, sender: alice, recipient: bob)
# recommendation_2 = Recommendation.new(wine: mouton_cadet, sender: bob, recipient: dede)
# recommendation_3 = Recommendation.new(wine: coteaux_bourguignons, sender: alice, recipient: eric)
# recommendation_4 = Recommendation.new(wine: margaux, sender: charlie, recipient: alice)
# recommendation_5 = Recommendation.new(wine: margaux, sender: alice, recipient: charlie)

# recommendation_1.save!
# recommendation_2.save!
# recommendation_3.save!
# recommendation_4.save!
# recommendation_5.save!


puts "==========================="
puts "Lectures created"
puts "==========================="

cours_1 = Lecture.new(title: 'Pour commencer', photo: 'https://cdn.pixabay.com/photo/2016/10/22/20/34/wine-1761613_1280.jpg')
cours_2 = Lecture.new(title: 'Découvrir le vin rouge', photo: 'https://cdn.pixabay.com/photo/2017/06/26/12/49/red-wine-2443699_1280.jpg')

puts "==========================="
puts "Lecture content created"
puts "==========================="

info_1 = Info.new(field: 'Fruit', content: 'Raisin', lecture: cours_1)
info_2 = Info.new(field: "Degrés d'alcool moyen", content: '12°', lecture: cours_1)
info_3 = Info.new(field: 'Durée de fabrication', content: '1 an', lecture: cours_1)
info_4 = Info.new(field: "Quantité d'eau", content: '85%', lecture: cours_1)
info_5 = Info.new(field: 'Origine', content: 'Moyen Orient', lecture: cours_1)
info_6 = Info.new(field: 'Raison', content: 'Noir', lecture: cours_2)
info_7 = Info.new(field: 'Meilleure région', content: 'Bordeaux', lecture: cours_2)
info_8 = Info.new(field: 'Stockage', content: "12°, 70% d'humidité, sombre, calme", lecture: cours_2)
info_9 = Info.new(field: 'Meilleure année', content: '1997', lecture: cours_2)
info_10 = Info.new(field: 'Quantité max pour conduire', content: '2 verres', lecture: cours_2)

puts "==========================="
puts "Tout bon !!!!!"
puts "==========================="

