# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do
  Book.create(title: "テスト",
              author: "テスト著者",
              price: 10000,
              category_id: 1,
              count: 1,
              image: open("#{Rails.root}/public/uploads/book/test.jpg"), 
              is_published: true)
end
