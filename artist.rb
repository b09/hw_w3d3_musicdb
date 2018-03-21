class Artist

attr_accessor :name
attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save
    sql = "
    INSERT INTO artists (name) VALUES ($1)
    "
    values = [@name]
    result = SqlRunner.runner(sql, values)
    # result2 = result[0]
    # result3 = result2['id']
    # @id = result3.to_i
 end

  def self.list_all
    something
  end

end
