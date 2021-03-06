require_relative('../db/sql_runner.rb')
require_relative('album.rb')

class Album

  attr_accessor :title, :genre
  attr_reader :id, :artist_id

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @title = options['title']
    @genre = options['genre']
    @artist_id = options['artist_id'].to_i()
  end

  def save()
    sql = "INSERT INTO albums (title, genre, artist_id)
    VALUES ($1, $2, $3) RETURNING id;"
    values = [@title, @genre, @artist_id]
    output = SqlRunner.run(sql, values)
    @id = output[0]['id'].to_i()
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM albums WHERE id = $1;"
    values = [id]
    output = SqlRunner.run(sql, values)[0]
    return Album.new(output)
  end

  def self.list_all()
    sql = "SELECT * FROM albums;"
    albums = SqlRunner.run(sql)
    return albums.map{|album| Album.new(album)}
  end

  def artist()
    sql = "SELECT * FROM artists WHERE id = $1"
    values = [@artist_id]
    artist = SqlRunner.run(sql, values)[0]
    return Artist.new(artist)
  end

  def update()
    sql = "UPDATE albums SET (title, genre) = ($1, $2) WHERE id = $3;"
    values = [@title, @genre, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM albums WHERE id = $1;"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM albums"
    SqlRunner.run(sql)
  end

#
end
