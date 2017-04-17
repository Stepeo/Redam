# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.create(name: "Thai Red Curry Chicken with Jasmine Rice",
              description: "This is one of the most famous Thai dish in the world. Ginger, coriander, red pepper, and coconut milk make this dish dish spicy, but at the same time mild",
              cuisine_id: 3,
              ingredients: ["ginger", "coriander", "red pepper", "onion", "jasmine rice"])
