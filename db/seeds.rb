# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name: "Alex", email: "alex@yahoo.com", password: "test")
user2 = User.create(name: "Rodney", email: "rod@gmail.com", password: "test")

user1_habit = Habit.create(habit_name: "Drink More Water", goal_description:"Drink 91 ounces of water per day.", goal_days: 30, user_id: user1.id)
user2_habit = Habit.create(habit_name: "Exercise", goal_description:"Log 30 minutes of exercise activty a day.", goal_days: 90, user_id: user2.id)