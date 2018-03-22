require_relative('runner')

class Album

attr_accessor :title, :genre
attr_reader :id, :artist_id

  def initialize(options)
    @title = options['title']
    @genre = options['genre']
    @id = options['id'].to_i if options['id']
    @artist_id = options['artist_id']
  end

  def save
    sql = "
    INSERT INTO albums (title, genre) VALUES ($1,$2) RETURNING *
    "
    values = [@title, @genre]
    result = SqlRunner.runner(sql, values)
    @id = result[0]['id'].to_i
  end

  def self.list_all
    sql = "
    SELECT * FROM albums
    "
    hash_output = SqlRunner.runner(sql)
    array_output = hash_output.map { |album| Album.new(album) }
    return array_output
  end

  def all_albums(artist_id)

  end

  def albums_artist

  end

end
