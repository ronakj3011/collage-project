# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "faker"

# delete old data if needed
UserDatum.delete_all

100.times do
  UserDatum.create!(
    age: rand(29..77),
    sex: [0, 1].sample,
    cp: rand(0..3),
    trestbps: rand(90..180),
    chol: rand(120..360),
    fbs: [0, 1].sample,
    restecg: rand(0..2),
    thalach: rand(70..200),
    exang: [0, 1].sample,
    oldpeak: rand.round(2) * rand(0.0..6.0),
    slope: rand(0..2),
    ca: rand(0..3),
    thal: rand(0..3),
    user_id: User.pluck(:id).sample,  # if you have users
    created_at: Faker::Time.between(from: 60.days.ago, to: Time.now),
    updated_at: Time.now
  )
end

puts "✅ Created 1000 user_data records successfully!"
