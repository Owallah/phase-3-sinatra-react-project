# require 'faker'
puts "🌱 Seeding spices..."

# Seed your database here
puts "🌱 Seeding art"
30.times do
    Art.create(
        title: Faker::Lorem.sentence,
        artist_id: rand(1..10),
        review_id: rand(1..10),
        image_url: Faker::Internet.url,
        description: Faker::Lorem.paragraph,
        likes: rand(1..20),
        dislikes: rand(1..20)
    )
end

puts "🌱 Seeding reviews"
10.times do
    Review.create(
        star_rating: Faker::Number.between(from: 1, to: 5),
        comments: Faker::Lorem.paragraph,
        viewer_id: rand(1..20),
        art_id: rand(1..30)
    )
end

puts "🌱 Seeding viewers"
20.times do
    Viewer.create(
        name: Faker::Name.name,
        country_of_origin: Faker::Address.country,
        profile_pic_url: Faker::Internet.url
    )
end

puts "🌱 Seeding artists"

10.times do
    Artist.create(
        name: Faker::Artist.name,
        country_of_origin: Faker::Address.country,
        avatar_url: Faker::Internet.url
    )
end

puts "✅ Done seeding!"
