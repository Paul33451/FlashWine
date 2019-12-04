puts "==========================="
puts "Destroy seed"
puts "==========================="

Recommendation.destroy_all
puts "review"
Review.destroy_all
Quiz.destroy_all
Question.destroy_all
Option.destroy_all
Lecture.destroy_all
Info.destroy_all
puts "users"
User.destroy_all
puts "wine"
Wine.destroy_all

puts "==========================="
puts "Seed destroyed !!!"
puts "==========================="

# Users
puts "==========================="
puts "Creating Users"
puts "==========================="

valentin = User.new(first_name:"Valentin", last_name:"Dausse", user_name:"Val", email:"valentin@gmail.com", password: "azerty", score: 100, photo: "https://kitt.lewagon.com/placeholder/users/vdausse")

paul = User.new(first_name:"Paul", last_name:"Manche", user_name:"Polo", email:"paul@gmail.com", password: "azerty", score: 300, photo: "https://kitt.lewagon.com/placeholder/users/Paul33451")

noemie = User.new(first_name:"Noemie", last_name:"Pierart", user_name:"Nono", email:"noemie@gmail.com", password: "azerty", score: 500, photo: "https://kitt.lewagon.com/placeholder/users/NoemiePierart")

lucas = User.new(first_name:"Lucas", last_name:"Dubernet", user_name:"Lulu", email:"lucas@gmail.com", password: "azerty", score: 700, photo: "https://kitt.lewagon.com/placeholder/users/DubernardL")

jojo = User.new(first_name:"Jonathan", last_name:"Serafini", user_name:"Jojo", email:"jojo@gmail.com", password: "azerty", score: 900, photo: "https://kitt.lewagon.com/placeholder/users/Joz84")


valentin.save!
paul.save!
noemie.save!
lucas.save!
jojo.save!

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


quiz_1 = Quiz.new(title: "Les bases de la dégustation", wine: margaux, photo: "quiz1-couleurs.jpg")
quiz_2 = Quiz.new(title: "Les Régions viticoles en France", wine: margaux, photo:"quiz2-crus.jpg")
quiz_3 = Quiz.new(title: "Les cépages", wine: margaux, photo:"quiz5-mets.jpg")
quiz_4 = Quiz.new(title: "Les Grands Crus Classés de Bordeaux", wine: margaux, photo:"/quiz3-terroirs.jpg")
quiz_5 = Quiz.new(title: "Les appellations de Bordeaux", wine: margaux, photo:"quiz4-bouchons.jpg")
quiz_6 = Quiz.new(title: "Les appellations de Bourgogne", wine: margaux, photo: "quiz6-biodynamie.jpg")


quiz_1.save!
quiz_2.save!
quiz_3.save!
quiz_4.save!
quiz_5.save!
quiz_6.save!

# Question
puts "==========================="
puts "Creating Questions"
puts "==========================="

question_1 = Question.new(content: "Quelle étape n’existe pas en dégustation ?", position: 1, quiz: quiz_1)
question_2 = Question.new(content: "Que pouvons-nous examiner lors de l'examen d’un vin?", position: 2, quiz: quiz_1)
question_3 = Question.new(content: "D’où viennent les arômes primaires?", position: 3, quiz: quiz_1)
question_4 = Question.new(content: " Lequel de ces 4 types d’arômes n’existe pas?", position: 4, quiz: quiz_1)
question_5 = Question.new(content: "Laquelle de ces impressions peut-on retrouver lors de l’examen gustatif?", position: 5, quiz: quiz_1)

question_1.save!
question_2.save!
question_3.save!
question_4.save!
question_5.save!

question_6 = Question.new(content: "Combien y a t-il de grande région viticole en France ?", position: 1, quiz: quiz_2)
question_7 = Question.new(content: "Quelle région viticole n’existe pas ?", position: 2, quiz: quiz_2)
question_8 = Question.new(content: "De quelle région viticole provient le Jurançon ?", position: 3, quiz: quiz_2)
question_9 = Question.new(content: "Dans quelle région est produit le champagne ?", position: 4, quiz: quiz_2)
question_10 = Question.new(content: "Dans quelle région est produit le Beaujolais nouveau ?", position: 5, quiz: quiz_2)
question_6.save!
question_7.save!
question_8.save!
question_9.save!
question_10.save!

question_11 = Question.new(content: "Qu’est ce qu’un cépage ?", position: 1, quiz: quiz_3)
question_12 = Question.new(content: "Combien y a t-il environ de cépages cultivés dans le monde ?", position: 2, quiz: quiz_3)
question_13 = Question.new(content: "Quel cépage est principalement utilisé en Bourgogne ?", position: 3, quiz: quiz_3)
question_14 = Question.new(content: "Quel cépage n’est pas utilisé dans la confection d’un champagne ?", position: 4, quiz: quiz_3)
question_15 = Question.new(content: "Lequel de ces cépages n’est pas un cépage rouge ?", position: 5, quiz: quiz_3)
question_11.save!
question_12.save!
question_13.save!
question_14.save!
question_15.save!

question_16 = Question.new(content: "Comment s’appelle le classement officiel des vins de Bordeaux ?", position: 1, quiz: quiz_4)
question_17 = Question.new(content: "Qui a ordonné  le classement de 1855 ?", position: 2, quiz: quiz_4)
question_18 = Question.new(content: "Quel vin n’est pas un cru classé ?", position: 3, quiz: quiz_4)
question_19 = Question.new(content: "Combien de changement a connu le classement officiel depuis sa créaton ?", position: 4, quiz: quiz_4)
question_20 = Question.new(content: "Quel segment du classement n’existe pas ?", position: 5, quiz: quiz_4)
question_16.save!
question_17.save!
question_18.save!
question_19.save!
question_20.save!

question_21 = Question.new(content: "Laquelle de ces 4 appellations n’appartient pas à la région bordelaise ?", position: 1, quiz: quiz_5)
question_22 = Question.new(content: "Laquelle de ces 4 appellations appartient à la sous-région “Médoc” ?", position: 2, quiz: quiz_5)
question_23 = Question.new(content: "Laquelle de ces 4 appellations appartient à la sous-région “Graves” ?", position: 3, quiz: quiz_5)
question_24 = Question.new(content: "Laquelle de ces 4 appellations appartient à la sous-région “Libournais” ?", position: 4, quiz: quiz_5)
question_25 = Question.new(content: "Quels cépages peut-on retrouver dans les vins de Bordeaux ?", position: 5, quiz: quiz_5)
question_21.save!
question_22.save!
question_23.save!
question_24.save!
question_25.save!

question_26 = Question.new(content: "Laquelle de ces 4 appellations n’appartient pas à la région bordelaise ?", position: 1, quiz: quiz_6)
question_27 = Question.new(content: "Laquelle de ces 4 appellations appartient à la sous-région “Médoc” ?", position: 2, quiz: quiz_6)
question_28 = Question.new(content: "Laquelle de ces 4 appellations appartient à la sous-région “Graves” ?", position: 3, quiz: quiz_6)
question_29 = Question.new(content: "Laquelle de ces 4 appellations appartient à la sous-région “Libournais” ?", position: 4, quiz: quiz_6)
question_30 = Question.new(content: "Quels cépages peut-on retrouver dans les vins de Bordeaux ?", position: 5, quiz: quiz_6)
question_26.save!
question_27.save!
question_28.save!
question_29.save!
question_30.save!


# Options
puts "==========================="
puts "Creating Options"
puts "==========================="

#######Options for quiz 1 :

#Options for question 1 :
option_1 = Option.new(title: "L’examen visuel", right: false, question: question_1)
option_2 = Option.new(title: "L’examen olfactif", right: false, question: question_1)
option_3 = Option.new(title: "L’examen facultatif", right: true, question: question_1)
option_4 = Option.new(title: "L’examin gustatif", right: false, question: question_1)

#Options for question 2 :
option_5 = Option.new(title: "Le prix", right: false, question: question_2)
option_6 = Option.new(title: " Le poids du verre", right: false, question: question_2)
option_7 = Option.new(title: "La brillance", right: true, question: question_2)
option_8 = Option.new(title: "Le bruit", right: false, question: question_2)

#Options for question 3 :
option_9 = Option.new(title: "Du nez", right: false, question: question_3)
option_10 = Option.new(title: "Du cépage", right: true, question: question_3)
option_11 = Option.new(title: "D’ajout d’arômes lors de la macération", right: false, question: question_3)
option_12 = Option.new(title: "Ces arômes n’existent pas", right: false, question: question_3)

#Options for question 4 :
option_13 = Option.new(title: "Les arômes primaires", right: false, question: question_4)
option_14 = Option.new(title: "Les arômes du second dégrés", right: true, question: question_4)
option_15 = Option.new(title: "Les arômes secondaires", right: false, question: question_4)
option_16 = Option.new(title: "Les arômes tertiaires", right: false, question: question_4)

#Options for question 5 :
option_17 = Option.new(title: "La partiale", right: false, question: question_5)
option_18 = Option.new(title: "L’attaque", right: true, question: question_5)
option_19 = Option.new(title: "La demi-finale", right: false, question: question_5)
option_20 = Option.new(title: "La contre attaque", right: false, question: question_5)

#######Options for quiz 2 :

#Options for question 1 :
option_21 = Option.new(title: "3", right: false, question: question_6)
option_22 = Option.new(title: "10", right: false, question: question_6)
option_23 = Option.new(title: "13", right: true, question: question_6)
option_24 = Option.new(title: "15", right: false, question: question_6)

#Options for question 2 :
option_25 = Option.new(title: "Bordeaux", right: false, question: question_7)
option_26 = Option.new(title: "Savoie", right: false, question: question_7)
option_27 = Option.new(title: "Villeneuvois", right: true, question: question_7)
option_28 = Option.new(title: "Corse", right: false, question: question_7)

#Options for question 3 :
option_29 = Option.new(title: "Le Jura", right: false, question: question_8)
option_30 = Option.new(title: "La Savoie", right: false, question: question_8)
option_31 = Option.new(title: "Le Sud-Ouest", right: true, question: question_8)
option_32 = Option.new(title: "Le Languedoc-Roussillon", right: false, question: question_8)

#Options for question 4 :
option_33 = Option.new(title: "Alsace", right: false, question: question_9)
option_34 = Option.new(title: "Champagne", right: true, question: question_9)
option_35 = Option.new(title: "Bordeaux", right: false, question: question_9)
option_36 = Option.new(title: "Provence", right: false, question: question_9)

#Options for question 5 :
option_37 = Option.new(title: "Bourgogne", right: false, question: question_10)
option_38 = Option.new(title: "Beaujolais", right: true, question: question_10)
option_39 = Option.new(title: "Bordeaux", right: false, question: question_10)
option_40 = Option.new(title: "Corse", right: false, question: question_10)


#######Options for quiz 3 :

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


#Options for question 11 :
option_41 = Option.new(title: "Une manière de faire le vin", right: false, question: question_11)
option_42 = Option.new(title: "Le fruit d’un type de vigne spécifique", right: false, question: question_11)
option_43 = Option.new(title: "Une AOC", right: false, question: question_11)
option_44 = Option.new(title: "Un type de vin", right: true, question: question_11)

option_41.save!
option_42.save!
option_43.save!
option_44.save!

option_45 = Option.new(title: "50", right: false, question: question_12)
option_46 = Option.new(title: "250", right: false, question: question_12)
option_47 = Option.new(title: "1000", right: false, question: question_12)
option_48 = Option.new(title: "5000", right: true, question: question_12)

option_45.save!
option_46.save!
option_47.save!
option_48.save!

option_49 = Option.new(title: "Le pinot noir", right: false, question: question_13)
option_50 = Option.new(title: "Le pinot", right: false, question: question_13)
option_51 = Option.new(title: "Le pinocchio", right: false, question: question_13)
option_52 = Option.new(title: "Le cabernet sauvignon", right: true, question: question_13)

option_49.save!
option_50.save!
option_51.save!
option_52.save!

option_53 = Option.new(title: "Le pinot meunier", right: false, question: question_14)
option_54 = Option.new(title: "Le merlot", right: false, question: question_14)
option_55 = Option.new(title: "Le Chardonnay", right: false, question: question_14)
option_56 = Option.new(title: "Le pinot noir", right: true, question: question_14)

option_53.save!
option_54.save!
option_55.save!
option_56.save!

option_57 = Option.new(title: "Le Cabernet Sauvignon", right: false, question: question_15)
option_58 = Option.new(title: "Le Merlot", right: false, question: question_15)
option_59 = Option.new(title: "Le Chardonnay", right: false, question: question_15)
option_60 = Option.new(title: "La Syrah", right: true, question: question_15)

option_57.save!
option_58.save!
option_59.save!
option_60.save!

# puts "==========================="
# puts "Creating recommendations"
# puts "==========================="

puts "==========================="
puts "Creating recommendations"
puts "==========================="

recommendation_1 = Recommendation.new(wine: rocher, sender: alice, recipient: bob)
recommendation_2 = Recommendation.new(wine: mouton_cadet, sender: bob, recipient: dede)
recommendation_3 = Recommendation.new(wine: coteaux_bourguignons, sender: alice, recipient: eric)
recommendation_4 = Recommendation.new(wine: margaux, sender: charlie, recipient: alice)
recommendation_5 = Recommendation.new(wine: margaux, sender: alice, recipient: charlie)

recommendation_1.save!
recommendation_2.save!
recommendation_3.save!
recommendation_4.save!
recommendation_5.save!


puts "==========================="
puts "Lectures created"
puts "==========================="

cours_1 = Lecture.new(title: 'Pour commencer', requirement: 0, photo: 'https://cdn.pixabay.com/photo/2016/10/22/20/34/wine-1761613_1280.jpg')
cours_2 = Lecture.new(title: 'Découvrir le vin rouge', requirement: 400, photo: 'https://cdn.pixabay.com/photo/2017/06/26/12/49/red-wine-2443699_1280.jpg')

cours_1.save
cours_2.save

puts "==========================="
puts "Lecture content created"
puts "==========================="

info_1 = Info.new(title: 'Fruit', content: 'Raisin', lecture: cours_1)
info_2 = Info.new(title: "Degrés d'alcool moyen", content: '12°', lecture: cours_1)
info_3 = Info.new(title: 'Durée de fabrication', content: '1 an', lecture: cours_1)
info_4 = Info.new(title: "Quantité d'eau", content: '85%', lecture: cours_1)
info_5 = Info.new(title: 'Origine', content: 'Moyen Orient', lecture: cours_1)
info_6 = Info.new(title: 'Raison', content: 'Noir', lecture: cours_2)
info_7 = Info.new(title: 'Meilleure région', content: 'Bordeaux', lecture: cours_2)
info_8 = Info.new(title: 'Stockage', content: "12°, 70% d'humidité, sombre, calme", lecture: cours_2)
info_9 = Info.new(title: 'Meilleure année', content: '1997', lecture: cours_2)
info_10 = Info.new(title: 'Quantité max pour conduire', content: '2 verres', lecture: cours_2)

info_1.save
info_2.save
info_3.save
info_4.save
info_5.save
info_6.save
info_7.save
info_8.save
info_9.save
info_10.save

puts "==========================="
puts "Tout bon !!!!!"
puts "==========================="

