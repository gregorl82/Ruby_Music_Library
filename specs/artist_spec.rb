require('minitest/autorun')
require('minitest/reporters')
require_relative('../models/artist.rb')

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class ArtistTest < MiniTest::Test

  def setup()
    details = {
      'name' => 'Amy Winehouse'
    }
    @artist1 = Artist.new(details)
  end

  def test_can_create_new_artist_and_get_name()
    assert_equal('Amy Winehouse', @artist1.name)
  end

  def test_can_change_artist_name()
    @artist1.name = 'Adele'
    assert_equal('Adele', @artist1.name)
  end

#
end
