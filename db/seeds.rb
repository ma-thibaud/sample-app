# Users
puts "Creating a main sample user."
User.create!(name: "Example User",
            email: "example@mini-twitter.org",
            password: "foobar",
            password_confirmation: "foobar",
            admin: true,
            activated: true,
            activated_at: Time.zone.now)

puts "Generating 50 additional users."
50.times do |n|
  puts "Generate user ##{n+1}."
  name = Faker::Name.name
  email = "example-#{n+1}@mini-twitter.org"
  password = "password"
  User.create!(name: name,
              email: email,
              password: password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
end

# Microposts
puts "Generating 50 microposts for a subset of users."
users = User.order(:created_at).take(6)
50.times do |n|
  puts "Generate micropost ##{n+1}."
  content = Faker::Lorem.sentence(word_count: 5)
  users.each { |user| user.microposts.create!(content: content) }
end

# Create following relationships.
puts "Creating following relationships.."
users = User.all
user = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

puts "Done!"
