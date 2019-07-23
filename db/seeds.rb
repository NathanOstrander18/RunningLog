# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

runs = Run.create([{distance:'3', unit:'miles', time:'30:00'}, {distance:'2', unit:'miles', time:'17:00'}, {distance:'1', unit:'miles', time:'8:00'}, {distance:'5', unit:'km', time:'25:00'}, {distance:'10', unit:'km', time:'60:00'}, {distance:'5', unit:'miles', time:'50:00'}])

user1 = User.create(name:'Nate', email:'nathan.ostrander@evanschambers.com')
user1.runs << runs[0..2]
user2 = User.create(name:'Mike', email:'Mike.Enike@evanschambers.com')
user2.runs << runs[3..5]
