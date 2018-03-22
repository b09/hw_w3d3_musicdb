class Artist

attr_accessor :name
attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save
    sql = "
    INSERT INTO artists (name) VALUES ($1) RETURNING *
    "
    values = [@name]
    result = SqlRunner.runner(sql, values)
    @id = result[0]['id'].to_i
 end

  def self.list_all
    sql = "
    SELECT * FROM artists
    "
    hash_of_artists = SqlRunner.runner(sql)
    array_of_artists = hash_of_artists.map {|artist| Artist.new(artist)}
    return array_of_artists
  end

end
