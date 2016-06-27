# Jessica Bohn
# 6/26/16
# 8.5 Challenge!

# Create a command-line input guided movie database for an individual
# Separate table for each category of movie
# Should allow user to sort alphabetically

# Use the sqlite3 add-on to properly run program
require 'sqlite3'
require 'faker'

# Create database to store the movie information
db = SQLite3::Database.new("movies.db")

# String command to create table for specific movie category
  # Create table IF NOT EXISTS
# Comedy
create_comedy_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS comedy(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    director VARCHAR(255),
    release_year INT,
    category VARCHAR(255)
  )
SQL

# Horror
create_horror_cmd = <<-SQL2
  CREATE TABLE IF NOT EXISTS horror(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    director VARCHAR(255),
    release_year INT,
    category VARCHAR(255)
  )

SQL2

# Romance
create_romance_cmd = <<-SQL3
  CREATE TABLE IF NOT EXISTS romance(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    director VARCHAR(255),
    release_year INT,
    category VARCHAR(255)
  )
SQL3

# Action
create_action_cmd = <<-SQL4
  CREATE TABLE IF NOT EXISTS action(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    director VARCHAR(255),
    release_year INT,
    category VARCHAR(255)
  )
SQL4

# Science Fiction
create_scifi_cmd = <<-SQL5
  CREATE TABLE IF NOT EXISTS scifi(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    director VARCHAR(255),
    release_year INT,
    category VARCHAR(255)
  )
SQL5

# Drama
create_drama_cmd = <<-SQL6
  CREATE TABLE IF NOT EXISTS drama(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    director VARCHAR(255),
    release_year INT,
    category VARCHAR(255)
  )
SQL6

# Call table commands
db.execute(create_comedy_cmd)
db.execute(create_horror_cmd)
db.execute(create_romance_cmd)
db.execute(create_action_cmd)
db.execute(create_scifi_cmd)
db.execute(create_drama_cmd)


# Ask user for category of movie to be entered into collection



