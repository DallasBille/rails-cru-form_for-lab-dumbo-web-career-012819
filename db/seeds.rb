# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Song.create(artist_id: 1, genre_id: 1, name: "Dre Day")
Genre.create(name: "rap")
Artist.create(name: "Dr.Dre", bio: "Straight Outta Compton")
