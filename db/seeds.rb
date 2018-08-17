# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artist = Artist.create(name:'Jimmy Eat World')

artist.songs.create!(title:"The Middle")
artist.songs.create!(title:"Sweetness")
artist.songs.create!(title:"Bleed American")
artist.songs.create!(title:"A Praise Chorus")
artist.songs.create!(title:"The Authority Song")
artist.songs.create!(title:"Hear You Me")
