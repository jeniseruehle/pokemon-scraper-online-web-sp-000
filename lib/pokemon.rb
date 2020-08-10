class Pokemon
  attr_accessor :id, :name, :type, :db 
  
  def initialize(id:, name:, type:, db:)
    @id = id 
    @name = name 
    @type = type
    @db = db
  end 
  
<<<<<<< HEAD
  def self.save(name, type, db) 
      sql = <<-SQL
      INSERT INTO pokemon (name, type) VALUES (?, ?);
      SQL
      
      db.execute(sql, [name, type])
  end 
  
  def self.find(id, db)
    sql = <<-SQL
    SELECT * FROM pokemon WHERE id = ?;
    SQL
    
    result = db.execute(sql, id).flatten
    Pokemon.new(name: result[1], type: result[2], db: db, id: id)
=======
  def self.save 
      sql = <<-SQL
      INSERT INTO pokemon (name, type, db)
      VALUES (?, ?, ?)
      SQL
      
      DB[:conn].execute(sql, self.name, self.type, self.db)
      @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
    end 
  end 
  
  def find
    
>>>>>>> fca240eefbfaaa0d0feb030e8e0b1c65d390be43
  end
end
