require_relative('runner')

class Album

attr_reader :title, :genre, :id, :artist_id

  def initialize(options)
    @title = options['title']
    @genre = options['genre']
    @id = options['id'].to_i
    @artist_id = options['artist_id']
  end

  def save
    sql = "
    INSERT INTO albums (title, genre) VALUES ($1,$2)
    "
    values = [@title, @genre]
  end

  def self.list_all
    something
  end

  def all_albums(artist_id)

  end

  def albums_artist

  end

end
