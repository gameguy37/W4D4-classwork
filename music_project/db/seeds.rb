# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

b1 = Band.create(name: 'Phish')
b2 = Band.create(name: 'moe.')
b3 = Band.create(name: 'Andy Frasco and the U.N.')
b4 = Band.create(name: 'Fleetwood Mac')
b5 = Band.create(name: 'Kikagaku Moyo')
b6 = Band.create(name: 'Vulfpeck')
b7 = Band.create(name: 'The Dismemberment Plan')
b8 = Band.create(name: 'Radiohead')
b9 = Band.create(name: 'Spafford')
b10 = Band.create(name: 'Lawrence')

a1 = Album.create(title: 'Round Room', yr: 2000, band_id: b1.id)
a2 = Album.create(title: 'A Picture of Nectar', yr: 1998, band_id: b1.id)
a3 = Album.create(title: 'Undermind', yr: 2003, band_id: b1.id)
a4 = Album.create(title: 'In Rainbows', yr: 2007, band_id: b8.id)

