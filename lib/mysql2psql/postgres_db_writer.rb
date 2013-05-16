require 'mysql2psql/postgres_writer'
require 'mysql2psql/connection'

class Mysql2psql

  class PostgresDbWriter < PostgresFileWriter
  
    attr_reader :connection, :filename
  
    def initialize(filename, options)
      # note that the superclass opens and truncates filename for writing
      super(filename)
      @filename = filename
      @connection = Connection.new(options)
    end
    
    def inload(path = filename)
      output = connection.load_file(path)
      puts output.to_s
    end

  end

end
