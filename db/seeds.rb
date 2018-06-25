# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do
  name = Faker::Science.element
  description = Faker::BackToTheFuture.quote
  category = Faker::File.extension
  price = Faker::Number.decimal(1, 2)
  version = Faker::Number.decimal(2, 2)
  author = Faker::Science.scientist
  logo = Faker::Company.logo
  App.create(name: name, description: description, category: category, price: price, version: version, author: author, logo: logo)
end


  #  t.string :name
  #     t.text :description
  #     t.string :category
  #     t.float :price
  #     t.float :version
  #     t.string :author
  #     t.string :logo