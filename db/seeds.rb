require 'faker'
require 'open-uri'

Ingredient.delete_all if Rails.env.development?
Cocktail.delete_all if Rails.env.development?

# url = "https://raw.githubusercontent.com/maltyeva/iba-cocktails/master/recipes.json"


# cocktails_array = JSON.parse(open(url).read)


# cocktails_array.each do |cocktail|
#   c = Cocktail.create!(name: cocktail["name"])
#   p "Added #{c.name} to the list"
#   cocktail["ingredients"].each do |ing|
#     unless ing["ingredient"].nil?
#       i = Ingredient.find_or_create_by!(name: ing["ingredient"])
#       p "Added #{i.name} to the list"
#       Dose.create(description: ing["amount"].to_s + " " + ing["unit"], ingredient: i, cocktail: c )
#     end
#   end
# end
# url = "http://static.giantbomb.com/uploads/original/9/99864/2419866-nes_console_set.png"
# article = Article.new(title: 'NES', body: "A great console")
# article.remote_photo_url = url
# article.save


Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

# photo_url = Faker::LoremFlickr.image("200x150", ['beverage'])
photo_url = "http://loremflickr.com/200/150/beverage"
Cocktail.create(name: "Long Island", remote_photo_url: photo_url)
# li.remote_photo_url = photo_url
# li.save

Cocktail.create(name: "Negroni", remote_photo_url: photo_url)
Cocktail.create(name: "Old-fashioned", remote_photo_url: photo_url)
Cocktail.create(name: "Moscow mule", remote_photo_url: photo_url)
Cocktail.create(name: "Manhattan", remote_photo_url: photo_url)
Cocktail.create(name: "Mojito", remote_photo_url: photo_url)


# Dose.create(description: "one dash")
