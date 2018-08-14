# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Song.destroy_all

a1 = Artist.create(name: "The Killers")
a2 = Artist.create(name: "Radiohead")
a3 = Artist.create(name: "Borns")
a4 = Artist.create(name: "Coldplay")
s1 = Song.create(title: "Karma Police", artist_id: a2)
s2 = Song.create(title: "Electric Love", artist_id: a3)
s3 = Song.create(title: "Fix You", artist_id: a4)
s4 = Song.create(title: "American Mondey", artist_id: a3)
# s5 = a1.create_song(title: "Leave the Bourbon on the Shelf")
# s6 = a2.create_song(title: "The Bends")
# s7 = a3.create_song(title: "Past Lives")
# s8 = a1.create_song(title: "All These Things That I've Done")
# s9 = a4.create_song(title: "Clocks")

puts "It worked!"
