# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding data!"
Pizza.create(name: 'Cheese', ingredients: 'mozzarella,garlic,oregano')
Pizza.create(name: 'Veggie', ingredients: 'peppers,mushrooms,eggplant,onions')
Pizza.create(name: 'Pepperoni', ingredients: 'mozzarella,pepperoni')
Pizza.create(name: 'Hawaiian', ingredients: 'mozzarella,ham,pineapple')
Pizza.create(name: 'Margherita', ingredients: 'mozzarella,basil,olive-oil,salt')


Restaurant.create(name: "Dream Bean", address: "69 West")
Restaurant.create(name: "Pizza Inn", address: "90 East Street")

# RestaurantPizza.create(price: 5, pizza_id: 1, restaurant_id: 2)
# RestaurantPizza.create(price: 10, pizza_id: 2, restaurant_id: 1)

one= RestaurantPizza.create(price: 2, pizza_id: 2, restaurant_id: 1)
two = RestaurantPizza.create(price: 3,pizza_id: 1, restaurant_id: 2)
three= RestaurantPizza.create(price: 5,pizza_id: 3, restaurant_id: 3)
four = RestaurantPizza.create(price: 6,pizza_id: 4, restaurant_id: 4)
five = RestaurantPizza.create(price:10,pizza_id: 5,restaurant_id:5)
six= RestaurantPizza.create(price: 3, pizza_id: 3, restaurant_id: 6)
    


puts "Done!"
