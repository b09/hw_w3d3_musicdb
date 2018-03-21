require_relative('artist')
require_relative('album')

artist1 = Artist.new({'name' => 'Abraham'})
artist2 = Artist.new({'name' => 'Essau'})
artist1.save()
artist2.save()
