# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Session.destroy_all
Reservation.destroy_all
User.destroy_all

user_one = User.create!(
  email: "ana@gmail.fr",
  password: "123456"
)

session_one = Session.new(
  title: 'Boxing',
  date: DateTime.parse("12/12/2022"),
  start_at: DateTime.parse("12/12/2022 10:00"),
  end_at: DateTime.parse("12/12/2022 11:30"),
  coach: 'Coach Naoufel',
  address: 'Atch Academy : 3 rue courtois, 93500 Pantin',
  title_address: '93500 Pantin',
  price: 16,
  max_participation: 35,
  description: 'Avec le générateur de texte online vous
  pouvez composer votre Lorem Ipsum personnel, en
  l’enrichissant avec des éléments html qui en définissent
  la structure, '
)
session_one.user = user_one
session_one.save!
