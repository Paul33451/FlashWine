# puts "==========================="
# puts "Destroy seed"
# puts "==========================="

# Recommendation.destroy_all
# puts "review"
# Review.destroy_all

# Lecture.destroy_all
# Info.destroy_all
# puts "users"
# User.destroy_all
# puts "wine"
# Wine.destroy_all

# puts "==========================="
# puts "Seed destroyed !!!"
# puts "==========================="

# # Users
# puts "==========================="
# puts "Creating Users"
# puts "==========================="

# valentin = User.new(first_name:"Valentin", last_name:"Dausse", user_name:"Val", email:"valentin@gmail.com", password: "azerty", score: 0)

# paul = User.new(first_name:"Paul", last_name:"Manche", user_name:"Polo", email:"paul@gmail.com", password: "azerty", score: 0)

# noemie = User.new(first_name:"Noemie", last_name:"Pierart", user_name:"Nono", email:"noemie@gmail.com", password: "azerty", score: 0)

# lucas = User.new(first_name:"Lucas", last_name:"Dubernard", user_name:"Lulu", email:"lucas@gmail.com", password: "azerty", score: 0)

# jojo = User.new(first_name:"Jonathan", last_name:"Serafini", user_name:"Jojo", email:"jojo@gmail.com", password: "azerty", score: 0)


alice = User.new(first_name:"Alice", last_name:"Roy", user_name:"Alice", email:"alice@gmail.com", password: "azerty", score: 0)

arthur = User.new(first_name:"Arthur", last_name:"Menard", user_name:"Arthur", email:"arthur@gmail.com", password: "azerty", score: 0)

mahdi = User.new(first_name:"Mahdi", last_name:"Lamriben", user_name:"Mahdi", email:"mahdi@gmail.com", password: "azerty", score: 0)

marie = User.new(first_name:"Marie", last_name:"Bégué", user_name:"Marie", email:"marie@gmail.com", password: "azerty", score: 0)

simon = User.new(first_name:"Simon", last_name:"Letellier", user_name:"Simon", email:"simon@gmail.com", password: "azerty", score: 0)

adrien = User.new(first_name:"Adrien", last_name:"Peres", user_name:"Ad", email:"adrien@gmail.com", password: "azerty", score: 0)


alice.save!
arthur.save!
mahdi.save!
marie.save!
simon.save!
adrien.save!

# # Wines
# puts "==========================="
# puts "Creating wines"
# puts "==========================="

# rocher = Wine.new(region:"Bordeaux", appellation:"Saint-Emilion Grand Cru", cepage:"Merlot, Cabernet franc, Cabernet sauvignon", color:"rouge", name:"Château du Rocher", year:2016, photo:"")

# mouton_cadet = Wine.new(region:"Loire", appellation:"Sauternes", cepage:"Sémillon 80% / Sauvignon 20% ", color:"rosé", name:"Mouton Cadet", year:1892, photo:"")

# coteaux_bourguignons = Wine.new(region:"Bourgogne", appellation:"Coteaux Bourguignons", cepage:" Pinot Noir 100% ", color:"rouge", name:"Jean de Laurere", year:2016, photo:"")

# margaux = Wine.new(region:"Bordeaux", appellation:"Margaux", cepage:"Chenin 100%", color:"blanc", name:"Chateau Margaux", year:2016, photo:"")

# romanin = Wine.new(region:"Provence", appellation:"Les Baux de Provence", cepage:"Syrah, Grenache, Mourvèdre, Cabernet Sauvignon", color:"rouge", name:"Château Romanin", year:2008, photo:"")

# guigal = Wine.new(region:"Rhône", appellation:"Côtes du Rhône", cepage:"Syrah, Grenache, Mourvèdre", color:"rouge", name:"Guigal Côtes du Rhône", year:2016, photo:"")

# franc = Wine.new(region:"Bordeaux", appellation:"Bordeaux Supérieur", cepage:"Cabernet Franc 100%",color:"rouge", name:"Pur Franc", year:2015, photo:"")

# hautmayne = Wine.new(region:"Bordeaux", appellation:"Graves", cepage:"Sémillon, Sauvignon",color:"blanc", name:"Château Haut Mayne", year:2017, photo:"")

# uby = Wine.new(region:"Sud-Ouest", appellation:"Côtes de Gascogne", cepage:"Colombard 80% / Ugni blanc 20%",color:"blanc", name:"Domaine UBY N°3", year:2015, photo:"")

# naudin = Wine.new(region:"Loire", appellation:"Vouvray", cepage:"Chenin 100% ",color:"blanc", name:"Domaine Le Clos Naudin", year:2016, photo:"")

# french = Wine.new(region:"Bordeaux", appellation:"Bordeaux", cepage:"Merlot 80% / Cabernet Sauvignon 20% ",color:"rosé", name:"French Rosé", year:2017, photo:"")

# honoré = Wine.new(region:"Provence", appellation:"Côtes de Provence", cepage:"Grenache 40% / Cinsault 20% / Syrah 10% / Vermentino 10% / Carignan 10%",color:"rosé", name:"Tour Saint Honoré", year:2018, photo:"")

# tendem = Wine.new(region:"Languedoc-Roussion", appellation:"Languedoc", cepage:"Grenache / Syrah",color:"rosé", name:"Tendem", year:2018, photo:"")

# rocher.save!
# mouton_cadet.save!
# coteaux_bourguignons.save!
# margaux.save!
# romanin.save!
# guigal.save!
# franc.save!
# hautmayne.save!
# uby.save!
# naudin.save!
# french.save!
# honoré.save!
# tendem.save!


# # Reviews
# puts "==========================="
# puts "Creating Reviews"
# puts "==========================="

# review_1 = Review.new(wine: guigal, content:"Vos papilles vont adorer ! Un vrai régal, même si le prix est un peu élevé.", user: valentin, rating: 3)

# review_2 = Review.new(wine: guigal, content:"Très décevant, la qualité n'est pas au rendez-vous. ", user: lucas, rating: 1)

# review_3 = Review.new(wine: guigal, content:"Une petite merveille, à déguster en toute occasion. Idéal pour accompagner vos meilleurs repas", user: paul, rating: 5)

# review_4 = Review.new(wine: guigal, content:"Une belle couleur et une superbe saveur, à découvrir sans tarder ", user: noemie, rating: 4)

# review_1.save!
# review_2.save!
# review_3.save!
# review_4.save!


# # Quiz
# puts "==========================="
# puts "Creating Quiz"
# puts "==========================="


# quiz_1 = Quiz.new(title: "Les bases de la dégustation", wine: margaux, photo: "quiz1-couleurs.png")
# quiz_2 = Quiz.new(title: "Les Régions viticoles en France", wine: margaux, photo:"quiz2-crus.png")
# quiz_3 = Quiz.new(title: "Les accords mets-vins", wine: margaux, photo:"quiz5-mets.png")
# quiz_5 = Quiz.new(title: "Les appellations de Bordeaux", wine: margaux, photo:"quiz4-bouchons.png")
# quiz_6 = Quiz.new(title: "Les appellations de Bourgogne", wine: margaux, photo: "quiz6-biodynamie.png")

# quiz_1.save!
# quiz_2.save!
# quiz_3.save!
# quiz_5.save!
# quiz_6.save!

# # Question
# puts "==========================="
# puts "Creating Questions"
# puts "==========================="

# question_1 = Question.new(content: "Quelle étape n’existe pas en dégustation ?", position: 1, quiz: quiz_1)
# question_2 = Question.new(content: "Que pouvons-nous examiner lors de l'examen d’un vin?", position: 2, quiz: quiz_1)
# question_3 = Question.new(content: "D’où viennent les arômes primaires?", position: 3, quiz: quiz_1)
# question_4 = Question.new(content: " Lequel de ces 4 types d’arômes n’existe pas?", position: 4, quiz: quiz_1)
# question_5 = Question.new(content: "Laquelle de ces impressions peut-on retrouver lors de l’examen gustatif?", position: 5, quiz: quiz_1)

# question_1.save!
# question_2.save!
# question_3.save!
# question_4.save!
# question_5.save!

# question_6 = Question.new(content: "Combien y a t-il de grandes régions viticoles en France ?", position: 1, quiz: quiz_2)
# question_7 = Question.new(content: "Quelle région viticole n’existe pas ?", position: 2, quiz: quiz_2)
# question_8 = Question.new(content: "De quelle région viticole provient le Jurançon ?", position: 3, quiz: quiz_2)
# question_9 = Question.new(content: "Dans quelle région est produit le champagne ?", position: 4, quiz: quiz_2)
# question_10 = Question.new(content: "Dans quelle région est produit le Beaujolais nouveau ?", position: 5, quiz: quiz_2)
# question_6.save!
# question_7.save!
# question_8.save!
# question_9.save!
# question_10.save!

# question_11 = Question.new(content: "Qu’est ce qu’un cépage ?", position: 1, quiz: quiz_3)
# question_12 = Question.new(content: "Combien y a t-il environ de cépages cultivés dans le monde ?", position: 2, quiz: quiz_3)
# question_13 = Question.new(content: "Quel cépage est principalement utilisé en Bourgogne ?", position: 3, quiz: quiz_3)
# question_14 = Question.new(content: "Quel cépage n’est pas utilisé dans la confection d’un champagne ?", position: 4, quiz: quiz_3)
# question_15 = Question.new(content: "Lequel de ces cépages n’est pas un cépage rouge ?", position: 5, quiz: quiz_3)
# question_11.save!
# question_12.save!
# question_13.save!
# question_14.save!
# question_15.save!

# question_21 = Question.new(content: "Laquelle de ces 4 appellations n’appartient pas à la région bordelaise ?", position: 1, quiz: quiz_5)
# question_22 = Question.new(content: "Laquelle de ces 4 appellations appartient à la sous-région “Médoc” ?", position: 2, quiz: quiz_5)
# question_23 = Question.new(content: "Laquelle de ces 4 appellations appartient à la sous-région “Graves” ?", position: 3, quiz: quiz_5)
# question_24 = Question.new(content: "Laquelle de ces 4 appellations appartient à la sous-région “Libournais” ?", position: 4, quiz: quiz_5)
# question_25 = Question.new(content: "Quels cépages peut-on retrouver dans les vins de Bordeaux ?", position: 5, quiz: quiz_5)
# question_21.save!
# question_22.save!
# question_23.save!
# question_24.save!
# question_25.save!

# question_26 = Question.new(content: "Laquelle de ces 4 appellations n’appartient pas à la région bordelaise ?", position: 1, quiz: quiz_6)
# question_27 = Question.new(content: "Laquelle de ces 4 appellations appartient à la sous-région “Médoc” ?", position: 2, quiz: quiz_6)
# question_28 = Question.new(content: "Laquelle de ces 4 appellations appartient à la sous-région “Graves” ?", position: 3, quiz: quiz_6)
# question_29 = Question.new(content: "Laquelle de ces 4 appellations appartient à la sous-région “Libournais” ?", position: 4, quiz: quiz_6)
# question_30 = Question.new(content: "Quels cépages peut-on retrouver dans les vins de Bordeaux ?", position: 5, quiz: quiz_6)
# question_26.save!
# question_27.save!
# question_28.save!
# question_29.save!
# question_30.save!


# # Options
# puts "==========================="
# puts "Creating Options"
# puts "==========================="

# #######Options for quiz 1 :

# #Options for question 1 :
# option_1 = Option.new(title: "L’examen visuel", right: false, question: question_1)
# option_2 = Option.new(title: "L’examen olfactif", right: false, question: question_1)
# option_3 = Option.new(title: "L’examen facultatif", right: true, question: question_1)
# option_4 = Option.new(title: "L’examin gustatif", right: false, question: question_1)

# #Options for question 2 :
# option_5 = Option.new(title: "Le prix", right: false, question: question_2)
# option_6 = Option.new(title: " Le poids du verre", right: false, question: question_2)
# option_7 = Option.new(title: "La brillance", right: true, question: question_2)
# option_8 = Option.new(title: "Le bruit", right: false, question: question_2)

# #Options for question 3 :
# option_9 = Option.new(title: "Du nez", right: false, question: question_3)
# option_10 = Option.new(title: "Du cépage", right: true, question: question_3)
# option_11 = Option.new(title: "D’ajout d’arômes lors de la macération", right: false, question: question_3)
# option_12 = Option.new(title: "Ces arômes n’existent pas", right: false, question: question_3)

# #Options for question 4 :
# option_13 = Option.new(title: "Les arômes primaires", right: false, question: question_4)
# option_14 = Option.new(title: "Les arômes du second dégré", right: true, question: question_4)
# option_15 = Option.new(title: "Les arômes secondaires", right: false, question: question_4)
# option_16 = Option.new(title: "Les arômes tertiaires", right: false, question: question_4)

# #Options for question 5 :
# option_17 = Option.new(title: "La partiale", right: false, question: question_5)
# option_18 = Option.new(title: "L’attaque", right: true, question: question_5)
# option_19 = Option.new(title: "La demi-finale", right: false, question: question_5)
# option_20 = Option.new(title: "La contre-attaque", right: false, question: question_5)

# #######Options for quiz 2 :

# #Options for question 1 :
# option_21 = Option.new(title: "3", right: false, question: question_6)
# option_22 = Option.new(title: "10", right: false, question: question_6)
# option_23 = Option.new(title: "13", right: true, question: question_6)
# option_24 = Option.new(title: "15", right: false, question: question_6)

# #Options for question 2 :
# option_25 = Option.new(title: "Bordeaux", right: false, question: question_7)
# option_26 = Option.new(title: "Savoie", right: false, question: question_7)
# option_27 = Option.new(title: "Villeneuvois", right: true, question: question_7)
# option_28 = Option.new(title: "Corse", right: false, question: question_7)

# #Options for question 3 :
# option_29 = Option.new(title: "Le Jura", right: false, question: question_8)
# option_30 = Option.new(title: "La Savoie", right: false, question: question_8)
# option_31 = Option.new(title: "Le Sud-Ouest", right: true, question: question_8)
# option_32 = Option.new(title: "Le Languedoc-Roussillon", right: false, question: question_8)

# #Options for question 4 :
# option_33 = Option.new(title: "Alsace", right: false, question: question_9)
# option_34 = Option.new(title: "Champagne", right: true, question: question_9)
# option_35 = Option.new(title: "Bordeaux", right: false, question: question_9)
# option_36 = Option.new(title: "Provence", right: false, question: question_9)

# #Options for question 5 :
# option_37 = Option.new(title: "Bourgogne", right: false, question: question_10)
# option_38 = Option.new(title: "Beaujolais", right: true, question: question_10)
# option_39 = Option.new(title: "Bordeaux", right: false, question: question_10)
# option_40 = Option.new(title: "Corse", right: false, question: question_10)


# #######Options for quiz 3 :

# option_1.save!
# option_2.save!
# option_3.save!
# option_4.save!
# option_5.save!
# option_6.save!
# option_7.save!
# option_8.save!
# option_9.save!
# option_10.save!
# option_11.save!
# option_12.save!
# option_13.save!
# option_14.save!
# option_15.save!
# option_16.save!
# option_17.save!
# option_18.save!
# option_19.save!
# option_20.save!


# #Options for question 11 :
# option_41 = Option.new(title: "Une manière de faire le vin", right: false, question: question_11)
# option_42 = Option.new(title: "Le fruit d’un type de vigne spécifique", right: false, question: question_11)
# option_43 = Option.new(title: "Une AOC", right: false, question: question_11)
# option_44 = Option.new(title: "Un type de vin", right: true, question: question_11)

# option_41.save!
# option_42.save!
# option_43.save!
# option_44.save!

# option_45 = Option.new(title: "50", right: false, question: question_12)
# option_46 = Option.new(title: "250", right: false, question: question_12)
# option_47 = Option.new(title: "1000", right: false, question: question_12)
# option_48 = Option.new(title: "5000", right: true, question: question_12)

# option_45.save!
# option_46.save!
# option_47.save!
# option_48.save!

# option_49 = Option.new(title: "Le pinot noir", right: false, question: question_13)
# option_50 = Option.new(title: "Le pinot", right: false, question: question_13)
# option_51 = Option.new(title: "Le pinocchio", right: false, question: question_13)
# option_52 = Option.new(title: "Le cabernet sauvignon", right: true, question: question_13)

# option_49.save!
# option_50.save!
# option_51.save!
# option_52.save!

# option_53 = Option.new(title: "Le pinot meunier", right: false, question: question_14)
# option_54 = Option.new(title: "Le merlot", right: false, question: question_14)
# option_55 = Option.new(title: "Le Chardonnay", right: false, question: question_14)
# option_56 = Option.new(title: "Le pinot noir", right: true, question: question_14)

# option_53.save!
# option_54.save!
# option_55.save!
# option_56.save!

# option_57 = Option.new(title: "Le Cabernet Sauvignon", right: false, question: question_15)
# option_58 = Option.new(title: "Le Merlot", right: false, question: question_15)
# option_59 = Option.new(title: "Le Chardonnay", right: false, question: question_15)
# option_60 = Option.new(title: "La Syrah", right: true, question: question_15)

# option_57.save!
# option_58.save!
# option_59.save!
# option_60.save!

# # puts "==========================="
# # puts "Creating recommendations"
# # puts "==========================="

# puts "==========================="
# puts "Creating recommendations"
# puts "==========================="

# recommendation_1 = Recommendation.new(wine: rocher, sender: paul, recipient: noemie)
# recommendation_2 = Recommendation.new(wine: mouton_cadet, sender: valentin, recipient: jojo)
# recommendation_3 = Recommendation.new(wine: coteaux_bourguignons, sender: valentin, recipient: jojo)
# recommendation_4 = Recommendation.new(wine: guigal, sender: paul, recipient: valentin)
# recommendation_5 = Recommendation.new(wine: margaux, sender: lucas, recipient: jojo)

# recommendation_1.save!
# recommendation_2.save!
# recommendation_3.save!
# recommendation_4.save!
# recommendation_5.save!


# puts "==========================="
# puts "Lectures created"
# puts "==========================="


# quiz_1 = Quiz.new(title: "Les bases de la dégustation", wine: margaux, photo: "quiz1-couleurs.png")
# quiz_2 = Quiz.new(title: "Les Régions viticoles en France", wine: margaux, photo:"quiz2-crus.png")
# quiz_3 = Quiz.new(title: "Les cépages des vins de France", wine: margaux, photo:"quiz5-mets.png")
# quiz_5 = Quiz.new(title: "Les appellations de Bordeaux", wine: margaux, photo:"quiz4-bouchons.png")
# quiz_6 = Quiz.new(title: "Les appellations de Bourgogne", wine: margaux, photo: "quiz6-biodynamie.png")


# cours_1 = Lecture.new(title: 'Bases de la dégustation', requirement: 0, photo: 'quiz1-couleurs.png')
# cours_2 = Lecture.new(title: 'Les régions viticoles en France', requirement: 0, photo: 'quiz2-crus.png')
# cours_3 = Lecture.new(title: 'Les cépages des vins de France', requirement: 0, photo: 'quiz5-mets.png')
# cours_4 = Lecture.new(title: 'Les appellations de Bordeaux', requirement: 0, photo: 'quiz4-bouchons.png')
# cours_5 = Lecture.new(title: 'Les appellations de Bourgogne', requirement: 0, photo: 'quiz6-biodynamie.png')
# cours_6 = Lecture.new(title: 'Le vin et ses raisins', requirement: 0, photo: 'https://www.lanutrition.fr/sites/default/files/styles/article_large/public/ressources/raisins_varietes.jpg?itok=zNYcwZFI')

# cours_1.save
# cours_2.save
# cours_3.save
# cours_4.save
# cours_5.save
# cours_6.save


# puts "==========================="
# puts "Lecture content created"
# puts "==========================="

# info_1 = Info.new(title: '🍇 Le fruit du vin', content: 'Raisin blanc ou noir', lecture: cours_1)
# info_2 = Info.new(title: "🍷 Les sens nécessaires à le gouter", content: "Grâce à l'odorat, la vue et le goût", lecture: cours_1)
# info_3 = Info.new(title: "🌱 Qu'est ce que le cépage?", content: 'Définit le type de plan de vigne', lecture: cours_1)
# info_4 = Info.new(title: "🔍 Comment le determiner", content: "Par l'analyse de la feuille, des grappes et des baies", lecture: cours_1)
# info_5 = Info.new(title: "👃🏽 Qu'est ce que les arômes primaires?", content: "Ce sont les premières détectées. Elles sont apportés par le cépage", lecture: cours_1)
# info_6 = Info.new(title: 'Raison', content: 'Noir', lecture: cours_2)
# info_7 = Info.new(title: 'Meilleure région', content: 'Bordeaux', lecture: cours_2)
# info_8 = Info.new(title: 'Stockage', content: "12°, 70% d'humidité, sombre, calme", lecture: cours_2)
# info_9 = Info.new(title: 'Meilleure année', content: '1997', lecture: cours_2)
# info_10 = Info.new(title: 'Quantité max pour conduire', content: '2 verres', lecture: cours_2)

# info_1.save
# info_2.save
# info_3.save
# info_4.save
# info_5.save
# info_6.save
# info_7.save
# info_8.save
# info_9.save
# info_10.save

# puts "==========================="
# puts "Tout bon !!!!!"
# puts "==========================="

