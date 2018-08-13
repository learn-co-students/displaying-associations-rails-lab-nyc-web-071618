# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tori_amos = Artist.create(name: "Tori Amos")
tori_amos.songs.create(title: "Silent All These Years")
tori_amos.songs.create(title: "Caught a Light Sneeze")

bjork = Artist.create(name: "Björk")
bjork.songs.create(title: "Hyperballad")
