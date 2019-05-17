# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all

json = URI.parse("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
cocktails = JSON.parse(json, symbolize_names: true)
cocktails = cocktails[:drinks]

puts "Creating ingredients.."

cocktails.each do |cocktail|
  puts "+ #{cocktail[:strIngredient1]}"

  Ingredient.create!(name: cocktail[:strIngredient1])
end

puts "Done!"

Cocktail.create(
  name: "Old Fashioned Cocktail"
  )

Cocktail.create(
  name: "Martini"
  )

Cocktail.create(
  name: "Bloody Mary"
  )

Cocktail.create(
  name: "Margarita"
  )

Cocktail.create(
  name: "Mojito"
  )

Cocktail.create(
  name: "Daiquiri"
  )

Cocktail.create(
  name: "Gin and Tonic"
  )

Cocktail.create(
  name: "Screwdriver"
  )

Cocktail.create(
  name: "Manhattan"
  )




puts "Cocktail done!"

