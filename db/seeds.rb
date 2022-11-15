# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

1.times do
  User.create(name: Faker::Name.name, email: 'test@test.com', password: '12345678')
end

Category.create(name: 'Arts', icon: '🎨', user_id: 1)
Category.create(name: 'Food', icon: '🍽', user_id: 1)
Category.create(name: 'Hobbies', icon: '🎞', user_id: 1)

3.times do |expense|
  Expense.create(name: Faker::Artist.name, amount: rand(99..3333), category_ids: 1)
  Expense.create(name: Faker::Food.dish, amount: rand(9..33), category_ids: 2)
  Expense.create(name: Faker::Hobby.activity, amount: rand(99..333), category_ids: 3)
end
