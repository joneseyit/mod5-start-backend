# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
Photo.destroy_all

userX = 10.times do
  User.create(name: Faker::Name, username: Faker::GameOfThrones.character, email: Faker::Internet.email, bio: Faker::Yoda.quote, password: Faker::HarryPotter.character)
end

photos = ['https://images.unsplash.com/photo-1533142266415-ac591a4deae9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1536984456083-d69c8a7d952d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1514575619841-1a3d949d3277?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1523245787856-3b2750746be9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1516810714657-e654b97f1d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1490686838998-2bf91abe01a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1500640963716-929a14d94483?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1513684417245-6b223f8dd39f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1487621017290-f6348b1e550c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1516943294273-ea1986b95f25?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60']

Photo.create(title: "Bam", caption: "I was here for a bit and...", img: photos[0], user_id: 10)
Photo.create(title: "Slam", caption: "I was here for a bit and...", img: photos[1], user_id: 9)
Photo.create(title: "Cheers", caption: "I was here for a bit and...", img: photos[2], user_id: 8)
Photo.create(title: "Regards", caption: "I was here for a bit and...", img: photos[3], user_id: 7)
Photo.create(title: "Peace", caption: "I was here for a bit and...", img: photos[4], user_id: 6)
Photo.create(title: "Walk-n-talk", caption: "I was here for a bit and...", img: photos[5], user_id: 5)
Photo.create(title: "Junior", caption: "I was here for a bit and...", img: photos[6], user_id: 4)
Photo.create(title: "Believe", caption: "I was here for a bit and...", img: photos[7], user_id: 3)
Photo.create(title: "Hope", caption: "I was here for a bit and...", img: photos[8], user_id: 2)
Photo.create(title: "XYZ", caption: "I was here for a bit and...", img: photos[9], user_id: 1)
