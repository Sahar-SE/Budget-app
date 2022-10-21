# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p "Seeding database..."

# Create 2 users
first_user = User.create(name: Faker::Name.name, email: Faker::Internet.email, password: 123456, password_confirmation: 123456)
second_user = User.create(name: Faker::Name.name, email: Faker::Internet.email, password: 123456, password_confirmation: 123456)

# Create 2 groups
Group.create(user_id: first_user.id, name: "Housing", icon: "house")
Group.create(user_id: first_user.id, name: "Transportation", icon: "directions_car")

# Create 5 budgets
5.times do
  Budget.create(user_id: first_user.id, name: Faker::Commerce.unique.department, amount: Faker::Commerce.price)
end

3.times do
  Budget.create(user_id: second_user.id, name: Faker::Commerce.unique.department, amount: Faker::Commerce.price)
end

# Create 5 group_budgets
5.times do
  GroupBudget.create(group_id: Faker::Number.between(from: 1, to: 5), budget_id: Faker::Number.between(from: 1, to: 100))
end

100.times do
  GroupBudget.create(group_id: Faker::Number.between(from: 6, to: 11), budget_id: Faker::Number.between(from: 101, to: 200))
end

p "Seeding complete!"

p "Created #{User.count} users"
p "Created #{Group.count} groups"
p "Created #{Budget.count} budgets"
p "Created #{GroupBudget.count} group_budgets"