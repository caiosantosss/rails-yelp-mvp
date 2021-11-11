require 'faker'

puts "Cleaning the db..."
Restaurant.destroy_all

puts 'Creating 10 restaurants...'
10.times do
  restaurant = Restaurant.new(
    name: Faker::Fantasy::Tolkien.character,
    address: Faker::Fantasy::Tolkien.location,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORIES.sample
  )
  restaurant.save!
end
puts "...created #{Restaurant.count} restaurants"
