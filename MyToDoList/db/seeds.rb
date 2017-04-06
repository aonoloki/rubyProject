# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

15.times do |_a|
  Author.create(name: Faker::Book.author)
end

100.times do |_t|
  Task.create(name:      Faker::Book.title,
              content:   Faker::Lorem.paragraph,
              status:    rand(0..1),
              author_id: rand(0..15),
              date_due:  Faker::Time.between(DateTime.now - 5, DateTime.now + 5))
end
