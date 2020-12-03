# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Lifestyle.destroy_all
User.destroy_all

a = Lifestyle.create(category: "athletic", description: "an athletic person")
b = Lifestyle.create(category: "healthy", description: "a healthy person")
c = Lifestyle.create(category: "foodie", description: "an athletic person")
d = Lifestyle.create(category: "hungry", description: "an athletic person")

user = User.create(email: "ant@ant.com", password_digest: "pass123", lifestyle_id: nil, username: "ant_rubbo")

