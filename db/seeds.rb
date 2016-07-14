# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "jamesdoe", email: "jamesdoe@gmail.com", password: "password", password_confirmation: "password")
User.create(username: "janedoe", email: "janedoe@gmail.com", password: "password", password_confirmation: "password")
User.create(username: "jamiedoe", email: "jamiedoe@gmail.com", password: "password", password_confirmation: "password")
User.create(username: "johnsondoe", email: "johnsondoe@gmail.com", password: "password", password_confirmation: "password")
User.create(username: "joandoe", email: "joandoe@gmail.com", password: "password", password_confirmation: "password")
p "Test users created"