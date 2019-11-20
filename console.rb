require('pry')
require_relative('models/artist.rb')
require_relative('models/album.rb')

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

album1 = Album.new(
  {
    'title' => 'Frank',
    'genre' => 'Jazz',
    'artist_id' => artist1.id
  }
)

album1.save()

album2 = Album.new(
  {
    'title' => 'Back to Black',
    'genre' => 'Contemporary R&B',
    'artist_id' => artist1.id
  }
)

album2.save()

album3 = Album.new(
  {
    'title' => '19',
    'genre' => 'Blue-eyed Soul',
    'artist_id' => artist2.id
  }
)

album3.save()

binding.pry

nil
