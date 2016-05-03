# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Jess")
User.create(name: "Alysia")
User.create(name: "Deirdre")
User.create(name: "Llama")
User.create(name: "Puppy Party")

Product.create(name: 'Hot Dog', price: 15, user_id: 2, animal: 'Dog')
Product.create(name: "Dog Pirate", price: 20, user_id: 5, animal: 'Dog')
Product.create(name: "Alligator", price: 1, user_id: 1, animal: 'Dog')
Product.create(name: "Knight Guinea Pig", price: 56, user_id: 3, animal: "Guinea Pig")
Product.create(name: "St Patricks Dog", price: 94, user_id: 4, animal: "Dog")
Product.create(name: "Ewok dog", price: 6, user_id: 2, animal: "Dog")
Product.create(name: "Red Sweater", price: 7, user_id: 5, animal: "Goat")
Product.create(name: "Taco Cat", price: 14, user_id: 4, animal: "Cat")
Product.create(name: "Lion", price: 30, user_id: 3, animal: "Dog")
Product.create(name: 'Martini', price: 400, user_id: 1, animal: "Dog")
Product.create(name: 'Jockey', price: 22, user_id: 1, animal: "Dog")
