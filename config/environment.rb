require 'sqlite3'


DB = {:conn => SQLite3::Database.new("db/cars.db")}
DB[:conn].execute("DROP TABLE IF EXISTS cars")
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS cars (
  id INTEGER PRIMARY KEY,
  color TEXT,
  year TEXT
  )
SQL

DB[:conn].execute(sql)
DB[:conn].results_as_hash = true
