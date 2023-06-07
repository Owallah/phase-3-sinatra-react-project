puts "🌱 Seeding spices..."

# Seed your database here
puts "🌱 Seeding art"
30.times do
    Art.create(
        title: Faker::Art.title,
        artist_id: rand(1..10),
        review_id: rand(1..10),
        image_url: Faker::Art.image_url,
        description: Faker::Art.description
    )
end

puts "🌱 Seeding reviews"
10.times do
    Review.create
end

puts "✅ Done seeding!"
