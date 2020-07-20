# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Task.destroy_all

10.times do
  new_user = User.new(
    first_name: Faker::Name.first_name, 
    middle_name: Faker::Name.middle_name, 
    last_name: Faker::Name.last_name, 
    password: 'asdfasdf', 
    address_1: Faker::Address.street_address, 
    city: Faker::Address.city, 
    state: Faker::Address.state, 
    zip_code: Faker::Address.zip_code, 
    primary_phone: Faker::PhoneNumber.phone_number
  )
  new_user.email = "#{new_user.first_name}@email.com"
  new_user.save
end

Task.create(user: User.first, name:"Run a marathon")
Task.create(user: User.first, name:"Jog each day")
Task.create(user: User.first, name:"Plan run")