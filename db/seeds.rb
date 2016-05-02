# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


people = [
  { name: "Jess"},
  { name: "Alysia" },
  { name: "Deirdre"},
  { name: "Llama" },
  { name: "Puppy Party"},
]

people.each do |person|
  User.create user
end

Product.create(name: 'Hot Dog', price: 15, user_id: 2)
Product.create(name: "Dog Pirate", price: 20, user_id: 5)
Product.create(name: "Cat Spider", price: 1, user_id: 1)
Product.create(name: "Flying Fish", price: 56, user_id: 3)
Product.create(name: "Baked Potato", price: 94, user_id: 4)
Product.create(name: "Ice Cream Cone", price: 6, user_id: 2)
Product.create(name: "Banana Bird", price: 7, user_id: 5)
