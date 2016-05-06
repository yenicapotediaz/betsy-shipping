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
photo_url: "http://ecx.images-amazon.com/images/I/41qN0y-0FFL._SY300_.jpg", user_id: 2, animal: 'Dog', category: "Food")
Product.create(name: "Dog Pirate", price: 20, user_id: 5, animal: 'Dog', category: "Misc",
photo_url: "http://www.gadgetreview.com/wp-content/uploads/2012/05/Dog-Pirate-Costume-650x472.jpg")
Product.create(name: "Alligator", price: 1, user_id: 1, animal: 'Dog', category: "Animal",
Product.create(name: 'Hot Dog', price: 15, quantity: 20,
photo_url: "http://ecx.images-amazon.com/images/I/41qN0y-0FFL._SY300_.jpg", user_id: 2, category: 'Dog')
Product.create(name: "Dog Pirate", price: 20, user_id: 5, category: 'Dog', quantity: 10,
photo_url: "http://www.gadgetreview.com/wp-content/uploads/2012/05/Dog-Pirate-Costume-650x472.jpg")
Product.create(name: "Alligator", price: 1, user_id: 1, category: 'Dog', quantity: 30,
photo_url: "http://cdn1-www.dogtime.com/assets/uploads/gallery/cool-halloween-costumes/dog-halloween-costume-eaten_by_alligator.jpg")
Product.create(name: "Knight Guinea Pig", price: 56, user_id: 3, animal: "Guinea Pig", category: "Misc",
photo_url: "http://static.dudeiwantthat.com/img/gear/pets/handmade-guinea-pig-armor-8201.jpg")
Product.create(name: "St Patricks Dog", price: 94, user_id: 4, animal: "Dog", category: "Holiday",
photo_url: "https://s-media-cache-ak0.pinimg.com/236x/26/84/c3/2684c33c0be14d73dfa983b019a3e249.jpg")
Product.create(name: "Ewok dog", price: 6, user_id: 2, animal: "Dog", category: "Star Wars",
photo_url: "https://s-media-cache-ak0.pinimg.com/736x/86/bb/c0/86bbc0780b0d655924868ed0b858d7d6.jpg")
Product.create(name: "Taco Cat", price: 14, user_id: 4, animal: "Cat", category: "Food", photo_url: "http://pixel.brit.co/wp-content/uploads/2014/10/5-TacoKitten.jpg")
Product.create(name: "Lion", price: 30, user_id: 3, animal: "Dog", category: "Animal",
photo_url: "http://ecx.images-amazon.com/images/I/51ELTYHPEBL._AC_UL320_SR228,320_.jpg" )
Product.create(name: 'Martini', price: 400, user_id: 1, animal: "Dog", category: "Food",
photo_url: "http://littlefun.org/uploads/52741c71e691b26f19aec579_736.jpg" )
Product.create(name: 'Jockey', price: 22, user_id: 1, animal: "Dog", category: "Misc",


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

Review.create(rating: 1, description: 'Amazing!', product_id: 1)
Review.create(rating: 2, description: 'Wonderful', product_id: 1)
Review.create(rating: 3, description: 'What is that?', product_id: 2)
Review.create(rating: 4, description: 'Unholy', product_id: 2)
Review.create(rating: 5, description: 'Love it', product_id: 3)
Review.create(rating: 3, description: 'I want five just like it', product_id: 3)
Review.create(rating: 4, description: 'My daughter wears it. ', product_id: 4)
Review.create(rating: 2, description: 'The best.', product_id: 4)
Review.create(rating: 3, description: 'Just awful.', product_id: 5)
Review.create(rating: 4, description: 'Where can I get one for my fish?', product_id: 6)
Review.create(rating: 5, description: 'Bad delivery time.', product_id: 7)
Review.create(rating: 5, description: 'Is this edible?', product_id: 7)
Review.create(rating: 2, description: 'Feels real', product_id: 7)
Review.create(rating: 3, description: 'Can i eat that?', product_id: 7)
Review.create(rating: 2, description: "I'll take five.", product_id: 8)
Review.create(rating: 4, description: 'Nope.', product_id: 9)

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
