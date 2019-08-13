# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

runs = Run.all
Place.create!([
{ "name": "Washington Monument", "latitude": "38.8895","longitude": "77.0353", run:runs[0]},
{ "name": "Jefferson Memorial", "latitude": "38.8814", "longitude": "77.0365", run:runs[0]}
])

