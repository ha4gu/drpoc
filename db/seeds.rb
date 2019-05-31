# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.create!(
    title: "1st task",
    description: "This is the first task, yay!"
)
Task.create!(
    title: "2nd task",
    description: "This is the 2nd task, I suppose."
)
Task.create!(
    title: "3rd task",
    description: "Yes, this is the 3rd task."
)
Task.create!(
    title: "Do something important",
    description: "You need to finish something very important, hurry up!"
)
