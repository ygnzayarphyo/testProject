# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

99.times do |n|
  name  = Faker::Name.name.first(14)

  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(username:  name,
               email: email,
               password:              password)
end

 50.times do |n|
  title = "Title-#{n+1}"
  content = Faker::Lorem.sentence(5)
  user_id = rand(1...98)
  CATEGORY = ["Lifestyle", "Entertainment", "Tech", "Food", "Sports", "Videos", "Cinema"]
  randCategory= rand (0...6)
  BlogPost.create!(title: title, content: content, user_id: user_id, category: CATEGORY[randCategory])
end
