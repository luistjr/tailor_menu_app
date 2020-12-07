# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'json'
require 'pry'

Lifestyle.destroy_all
User.destroy_all
Recipe.destroy_all

Lifestyle.create(category: "athletic", description: "an athletic person")
Lifestyle.create(category: "healthy", description: "a healthy person")
Lifestyle.create(category: "foodie", description: "a foodie person")
Lifestyle.create(category: "hungry", description: "a hungry person")

# User.create(email: "ant@ant.com", password_digest: "pass123", lifestyle_id: 1, username: "ant_rubbo")

api_resp_athletic = RestClient.get("https://api.spoonacular.com/recipes/complexSearch?apiKey=af06813e585b487ca17fa4fdf9336090&diet=paleo&addRecipeInformation=true&number=20")
api_data_athletic = JSON.parse(api_resp_athletic)
 
api_resp_healthy = RestClient.get("https://api.spoonacular.com/recipes/complexSearch?apiKey=36c79f20f6f943bda234fd4c5a1c0133&diet=whole30&addRecipeInformation=true&number=20")
api_data_healthy = JSON.parse(api_resp_healthy)

api_resp_foodie = RestClient.get("https://api.spoonacular.com/recipes/complexSearch?apiKey=af06813e585b487ca17fa4fdf9336090&addRecipeInformation=true&number=20&cuisine=french,italian,Middle%20Eastern")
api_data_foodie = JSON.parse(api_resp_foodie)

api_resp_hungry = RestClient.get("https://api.spoonacular.com/recipes/complexSearch?apiKey=36c79f20f6f943bda234fd4c5a1c0133&addRecipeInformation=true&number=20")
api_data_hungry = JSON.parse(api_resp_hungry)

api_data_athletic["results"].each { |r| Recipe.create(title: r["title"], ready_in_minutes: r["readyInMinutes"], source_url: r["sourceUrl"], image: r["image"], summary: r["summary"], lifestyle_id: Lifestyle.first.id)}
api_data_healthy["results"].each { |r| Recipe.create(title: r["title"], ready_in_minutes: r["readyInMinutes"], source_url: r["sourceUrl"], image: r["image"], summary: r["summary"], lifestyle_id: Lifestyle.second.id)}
api_data_foodie["results"].each { |r| Recipe.create(title: r["title"], ready_in_minutes: r["readyInMinutes"], source_url: r["sourceUrl"], image: r["image"], summary: r["summary"], lifestyle_id: Lifestyle.third.id)}
api_data_hungry["results"].each { |r| Recipe.create(title: r["title"], ready_in_minutes: r["readyInMinutes"], source_url: r["sourceUrl"], image: r["image"], summary: r["summary"], lifestyle_id: Lifestyle.fourth.id)}

# binding.pry

MealKit.create(lifestyle_id: 1, provider: "Freshly", url: "https://www.freshly.com/",  description: "Quick, easy, and to the point.", image: "https://cnet3.cbsistatic.com/img/ZSnqq5MDeKYXxtIopTVd-2T0aA8=/756x425/2019/06/13/b3f97a61-b33e-4ac0-9e50-894ce349efff/production-meal-image-f03d0d38-2c3a-4e70-a4d6-bcd7ece9eb7c.jpg", price: "10.99")
MealKit.create(lifestyle_id: 2, provider: "Sun Basket", url: "https://sunbasket.com/", description: "Organic, fresh, with lots of diet specific options.", image: "https://cnet3.cbsistatic.com/img/2PHYfi1pvbjNDxM-AdFPEsOgBO8=/756x425/2019/06/13/e7d3c88b-f528-4dd6-bb20-9686f0d4933a/sun-basket-review-2019-chowhound-1.jpg", price: "11.99")
MealKit.create(lifestyle_id: 3, provider: "Green Chef", url: "https://www.greenchef.com/", description: "Cuisines from all around the world with fresh ingredients.", image: "https://cnet4.cbsistatic.com/img/sKSrHZVH3UaswOvL0dh0rFiZTY8=/756x425/2020/04/20/bba33ee6-8f47-43b0-a46d-ebf869b01839/green-chef-meal-kit.jpg", price: "12.99")
MealKit.create(lifestyle_id: 4, provider: "Home Chef", url: "https://www.homechef.com/", description: "Large portions that are simple to make.", image: "https://cnet4.cbsistatic.com/img/vG57fDMXwYZtUNPz-xq7jjGwe9k=/756x425/2019/09/23/da5bac72-6e8c-44ea-a387-1a5017dd0e51/box.png", price: "7.99")