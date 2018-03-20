require 'sqlite3'


DB = {:conn => SQLite3::Database.new("db/songs.db")}
DB[:conn].execute("DROP TABLE IF EXISTS songs")
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS cars (
  id INTEGER PRIMARY KEY,
  color TEXT,
  year TEXT
  )
SQL

DB[:conn].execute(sql)
DB[:conn].results_as_hash = true
