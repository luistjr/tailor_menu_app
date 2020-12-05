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

# api_resp_healthy = RestClient.get("https://api.spoonacular.com/recipes/complexSearch?apiKey=36c79f20f6f943bda234fd4c5a1c0133&diet=whole30&addRecipeInformation=true&number=20")
# api_data_healthy = JSON.parse(api_resp_healthy)

# api_resp_foodie = RestClient.get("https://api.spoonacular.com/recipes/complexSearch?apiKey=af06813e585b487ca17fa4fdf9336090&addRecipeInformation=true&number=20&cuisine=french,italian,Middle%20Eastern")
# api_data_foodie = JSON.parse(api_resp_foodie)

# api_resp_hungry = RestClient.get("https://api.spoonacular.com/recipes/complexSearch?apiKey=36c79f20f6f943bda234fd4c5a1c0133&addRecipeInformation=true&number=20")
# api_data_hungry = JSON.parse(api_resp_hungry)

api_data_athletic["results"].each { |r| Recipe.create(title: r["title"], ready_in_minutes: r["readyInMinutes"], source_url: r["sourceUrl"], image: r["image"], summary: r["summary"], lifestyle_id: Lifestyle.first.id)}
# api_data_healthy["results"].each { |r| Recipe.create(title: r["title"], ready_in_minutes: r["readyInMinutes"], source_url: r["sourceUrl"], image: r["image"], summary: r["summary"], lifestyle_id: Lifestyle.second.id)}
# api_data_foodie["results"].each { |r| Recipe.create(title: r["title"], ready_in_minutes: r["readyInMinutes"], source_url: r["sourceUrl"], image: r["image"], summary: r["summary"], lifestyle_id: Lifestyle.third.id)}
# api_data_hungry["results"].each { |r| Recipe.create(title: r["title"], ready_in_minutes: r["readyInMinutes"], source_url: r["sourceUrl"], image: r["image"], summary: r["summary"], lifestyle_id: Lifestyle.fourth.id)}

# binding.pry