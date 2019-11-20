require('pry')
require_relative('models/artist.rb')
require_relative('models/album.rb')

Artist.delete_all()

artist1 = Artist.new(
  {
    'name' => 'Amy Winehouse'
  }
)

artist1.save()

artist2 = Artist.new(
  {
    'name' => 'Adele'
  }
)

artist2.save()

album1_details = {
  'title' => 'Frank',
  'genre' => 'Jazz',
  'artist_id' => artist1.id
}

album1 = Album.new(album1_details)

album1.save()

binding.pry

nil
