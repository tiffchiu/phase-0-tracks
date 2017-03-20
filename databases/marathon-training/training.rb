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
# db.execute("INSERT INTO runs (run_date, distance, run_time, condition) VALUES (datetime('now'), 2.5, 28, 'First run, was a bit rough')")


# ADD RUN ENTRY

def add_run_entry(db, distance, run_time, condition)
  db.execute("INSERT INTO runs (run_date, distance, run_time, condition) VALUES (datetime('now'), ?, ?, ?)", [distance, run_time, condition])
end

# test driver code
# add_run_entry(db, "2017-03-10 17:30:00", 3, 28, 'Still struggling')
# add_run_entry(db, 3, 28, 'Still struggling')


# USER INTERFACE

puts "CHOOSE AN ACTION: \n1 - Add new entry \n2 - Display all entries \n3 - Delete an entry"
selection = gets.chomp.to_i

runs = db.execute("SELECT * FROM runs")
runs_list = runs.each do |run|
		puts "#{run['id']} | #{run['run_date']} | #{run['distance']} miles | #{run['run_time']} minutes"
	end

if selection == 1
	puts "How many miles did you run today?"
	distance = gets.chomp.to_i

	puts "How many minutes did you run for?"
	run_time = gets.chomp.to_i

	puts "How did the run feel?"
	condition = gets.chomp

	puts "SUMMARY OF TODAY'S RUN"
	puts "Distance: #{distance}"
	puts "Running Time: #{run_time}"
	puts "Condition: #{condition}"

	add_run_entry(db, distance, run_time, condition)

elsif selection == 2
	runs_list
	
elsif selection == 3
	runs_list
	puts "Select an entry to delete:"
	id = gets.chomp.to_i

	db.execute("DELETE FROM runs WHERE id=#{id}")

end	
