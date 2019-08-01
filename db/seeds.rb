# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
genre_movie = ["action","horreur","comédie","drame"]
100.times  do 
	my_movie = Movie.create!(name: Faker::Book.title ,year: Faker::Date.between(from:1900, to:2020) ,genre: genre_movie[rand(0..3)],synopsis: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),director: Faker::Book.author ,allocine_rating: Faker::Number.between(from: 1.0, to: 5.0), already_see: false,my_rating: nil)
	
end