# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Rental.create!(title: 'Grand Old Mansion', owner: 'Veruca Salt', city: 'San Francisco', property_type: 'Estate', bedrooms: 15, bathrooms: 25, image: 'https://upload.wikimedia.org/wikipedia/commons/c/cb/Crane_estate_(5).jpg')
Rental.create!(title: 'Urban Living', owner: 'Mike TV', city: 'Seattle', property_type: 'Condo', bedrooms: 1, bathrooms: 1, image: 'https://upload.wikimedia.org/wikipedia/commons/0/0e/Alfonso_13_Highrise_Tegucigalpa.jpg')
Rental.create!(title: 'Downtown Charm', owner: 'Violet Beauregarde', city: 'Portland', property_type: 'Apartment', bedrooms: 3, bathrooms: 2, image: 'https://upload.wikimedia.org/wikipedia/commons/f/f7/Wheeldon_Apartment_Building_-_Portland_Oregon.jpg')
