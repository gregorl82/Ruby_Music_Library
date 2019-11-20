require('minitest/autorun')
require('minitest/reporters')
require_relative('../models/album.rb')

MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class AlbumTest < MiniTest::Test

  def setup()
    album_details = {
      'title' => 'Back to Black',
      'genre' => 'Contemporary R&B'
    }
    @album1 = Album.new(album_details)
  end

  def test_can_create_album_and_get_title()
    assert_equal('Back to Black', @album1.title)
  end

  def test_can_get_genre()
    assert_equal('Contemporary R&B', @album1.genre)
  end

  def test_can_set_title()
    @album1.title = 'Frank'
    assert_equal('Frank', @album1.title)
  end

  def test_can_set_genre()
    @album1.genre = 'Jazz'
    assert_equal('Jazz', @album1.genre)
  end

#
end
