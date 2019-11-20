require('pry')
require_relative('models/artist.rb')

artist1 = Artist.new(
  {
    'name' => 'Amy Winehouse'
  }
)

artist1.save()

binding.pry

nil
