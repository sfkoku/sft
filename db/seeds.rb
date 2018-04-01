# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do
  Book.create(title: "新しいやつ",
              author: "利光",
              price: 10000,
              category_id: 3,
              count: 5,
              image: open("#{Rails.root}/public/uploads/book/image/20/8CE08AC0-0029-4354-A3E8-F09035C901EE.jpeg"), 
              is_published: true)
end
