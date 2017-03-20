# MARATHON TRAINING
# Helps someone keep track of how many miles they've run as they are training for a marathon.

# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("runs.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS runs(
    id INTEGER PRIMARY KEY,
    run_date TEXT,
    distance INT,
    run_time INT,
    condition VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

# add a test entry
db.execute("INSERT INTO runs (run_date, distance, run_time, condition) VALUES (datetime('now'), 2.5, 25, 'First run of this training, was a bit rough')")


