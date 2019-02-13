# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating restaurants'
Restaurant.create(name: 'PizzaMario', address: '9 rue du champ, 75013, Paris', category: 'italian')
Restaurant.create(name: 'Hadouken', address: '12 rue metro, 75013, Paris', category: 'japanese')
Restaurant.create(name: 'Le Chun-Li', address: '29 rue du kol, 75013, Paris', category: 'chinese')
Restaurant.create(name: 'Chez Platoche', address: '23 rue picole, 75013, Paris', category: 'french')
Restaurant.create(name: 'le JVC', address: '9 rue du champ, 75013, Paris', category: 'belgian')
puts 'Done !'
