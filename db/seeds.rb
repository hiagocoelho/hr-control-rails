# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside
# the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

seniorities = %w[Junior Associate Mid-level Senior Lead Manager Director Executive]

seniorities.each do |name|
  Seniority.create(name: name)
end

Department.create(name: 'Logistics')

Role.create(name: 'Full-stack Developer', department_id: Department.first[:id])

(1..10).each do |_id|
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name

  Employee.create!(
    first_name: first_name,
    last_name: last_name,
    gender_identity: Faker::Gender.type,
    birth_date: Faker::Date.between(from: '1970-01-01', to: '2005-01-01'),
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: Faker::Address.country,
    phone: Faker::PhoneNumber.cell_phone_with_country_code,
    email_address: Faker::Internet.email(name: "#{first_name} #{last_name}", separators: ['.']),
    verified: rand(2) == 1,
    document: Faker::Alphanumeric.alphanumeric(number: 11, min_numeric: 11),
    image_url: Faker::Avatar.image(size: '128x128', format: 'jpg'),
    role_id: 1,
    seniority_id: rand(1..8)
  )
end
