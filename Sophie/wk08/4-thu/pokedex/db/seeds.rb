# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pokemon.destroy_all

new_pokemon = Pokemon.create ([
  {species:"type1", nickname:"squirtle", level: "7", img_url: ''},
  {species:"type2", nickname:"Pikachu", level: "2", img_url: ''},
  {species:"type3", nickname:"frank", level: "8", img_url: ''}

])
