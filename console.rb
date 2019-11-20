require('pry')
require_relative('models/artist.rb')

Artist.delete_all()

artist1 = Artist.new(
  {
    'name' => 'Amy Winehouse'
  }
)

artist1.save()

binding.pry

nil
