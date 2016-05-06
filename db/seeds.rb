# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(full_name: "Jess")
User.create(full_name: "Alysia")
User.create(full_name: "Deirdre")
User.create(full_name: "Llama")
User.create(full_name: "Puppy Party")

Product.create(name: 'Hot Dog', price: 15,
photo_url: "http://ecx.images-amazon.com/images/I/41qN0y-0FFL._SY300_.jpg", user_id: 2, category: 'Dog')
Product.create(name: "Dog Pirate", price: 20, user_id: 5, category: 'Dog',
photo_url: "http://www.gadgetreview.com/wp-content/uploads/2012/05/Dog-Pirate-Costume-650x472.jpg")
Product.create(name: "Alligator", price: 1, user_id: 1, category: 'Dog',
photo_url: "http://cdn1-www.dogtime.com/assets/uploads/gallery/cool-halloween-costumes/dog-halloween-costume-eaten_by_alligator.jpg")
Product.create(name: "Knight Guinea Pig", price: 56, user_id: 3, category: "Guinea Pig",
photo_url: "http://static.dudeiwantthat.com/img/gear/pets/handmade-guinea-pig-armor-8201.jpg")
Product.create(name: "St Patricks Dog", price: 94, user_id: 4, category: "Dog",
photo_url: "https://s-media-cache-ak0.pinimg.com/236x/26/84/c3/2684c33c0be14d73dfa983b019a3e249.jpg")
Product.create(name: "Ewok dog", price: 6, user_id: 2, category: "Dog",
photo_url: "https://s-media-cache-ak0.pinimg.com/736x/86/bb/c0/86bbc0780b0d655924868ed0b858d7d6.jpg")
Product.create(name: "Taco Cat", price: 14, user_id: 4, category: "Cat")
Product.create(name: "Lion", price: 30, user_id: 3, category: "Dog",
photo_url: "http://ecx.images-amazon.com/images/I/51ELTYHPEBL._AC_UL320_SR228,320_.jpg" )
Product.create(name: 'Martini', price: 400, user_id: 1, category: "Dog",
photo_url: "http://littlefun.org/uploads/52741c71e691b26f19aec579_736.jpg" )
Product.create(name: 'Jockey', price: 22, user_id: 1, category: "Dog",
photo_url: "http://a.dilcdn.com/bl/wp-content/uploads/sites/13/2012/10/dog2.jpg")

Order.create(status: 'pending', price: 46, user_id: 1)
Order.create(status: 'paid', price: 99, user_id: 2)
Order.create(status: 'complete', price: 101, user_id: 3)
Order.create(status: 'cancelled', price: 10, user_id: 1)
Order.create(status: 'pending', price: 14, user_id: 2)
Order.create(status: 'paid', price: 26, user_id: 3)
Order.create(status: 'paid', price: 57, user_id: 1)
Order.create(status: 'paid', price: 79, user_id: 2)
Order.create(status: 'complete', price: 33, user_id: 3)
Order.create(status: 'complete', price: 64, user_id: 1)
Order.create(status: 'complete', price: 67, user_id: 2)
Order.create(status: 'complete', price: 12, user_id: 3)
Order.create(status: 'complete', price: 44, user_id: 1)

Review.create(rating: 1, description: 44)
Review.create(rating: 2, description: 44)
Review.create(rating: 3, description: 44)
Review.create(rating: 4, description: 44)
Review.create(rating: 5, description: 44)
Review.create(rating: 1, description: 44)
Review.create(rating: 2, description: 44)
Review.create(rating: 3, description: 44)
Review.create(rating: 4, description: 44)
Review.create(rating: 5, description: 44)
Review.create(rating: 1, description: 44)
Review.create(rating: 2, description: 44)
Review.create(rating: 3, description: 44)

Orderitem.create(quantity: 2, price: 5, order_id: 1, product_id: 1, seller_id: 1)
Orderitem.create(quantity: 3, price: 10, order_id: 1, product_id: 1, seller_id: 1)
Orderitem.create(quantity: 3, price: 10, order_id: 2, product_id: 1, seller_id: 1)
Orderitem.create(quantity: 6, price: 10, order_id: 2, product_id: 1, seller_id: 1)
Orderitem.create(quantity: 7, price: 10, order_id: 2, product_id: 1, seller_id: 1)
Orderitem.create(quantity: 2, price: 10, order_id: 2, product_id: 1, seller_id: 1)
Orderitem.create(quantity: 1, price: 5, order_id: 2, product_id: 1, seller_id: 1)
Orderitem.create(quantity: 9, price: 10, order_id: 2, product_id: 1, seller_id: 1)
Orderitem.create(quantity: 5, price: 10, order_id: 1, product_id: 2, seller_id: 2)
Orderitem.create(quantity: 6, price: 10, order_id: 1, product_id: 2, seller_id: 2)
Orderitem.create(quantity: 4, price: 10, order_id: 1, product_id: 2, seller_id: 2)
Orderitem.create(quantity: 3, price: 10, order_id: 1, product_id: 2, seller_id: 2)
Orderitem.create(quantity: 1, price: 5, order_id: 1, product_id: 2, seller_id: 2)
Orderitem.create(quantity: 2, price: 10, order_id: 1, product_id: 1, seller_id: 2)
Orderitem.create(quantity: 2, price: 10, order_id: 1, product_id: 1, seller_id: 2)
Orderitem.create(quantity: 2, price: 10, order_id: 1, product_id: 1, seller_id: 2)
Orderitem.create(quantity: 2, price: 5, order_id: 1, product_id: 1, seller_id: 2)
