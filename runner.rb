require('pg')

class SqlRunner

  def self.runner(sql, values = []) 
    begin
      db = PG.connect({ dbname: 'music_data', host: 'localhost'})
      db.prepare("abcd", sql)
      pg_output = db.exec_prepared("abcd", values)
    ensure
      db.close() if db != nil
    end
    return pg_output
  end

end
