require_relative('artist')
require_relative('album')

artist1 = Artist.new({'name' => 'Abraham'})
artist2 = Artist.new({'name' => 'Essau'})
artist1.save()
artist2.save()

album1 = Album.new({'title' => 'Going Downtown', 'genre' => 'Rock', 'artist_id' => artist1.id})
album2 = Album.new({'title' => 'Strawberry Mansion', 'genre' => 'HipHip', 'artist_id' => artist2.id})
album1.save
album2.save

p Artist.list_all
p "------------"
p Album.list_all
