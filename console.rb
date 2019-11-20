require('pry')
require_relative('models/artist.rb')

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

artist3 = Artist.new(
  {
    'name' => 'Jessie J'
  }
)

artist3.save()

binding.pry

nil
