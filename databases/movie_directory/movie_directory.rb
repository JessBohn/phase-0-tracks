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

#USER INPUT

# Run movie data collection until user enters done
input = ""
until input == "done"
  # Ask user for category of movie to be entered into collection
  puts "What is the category of the movie?"
  # Collect and covert category to lowercase letters
  category = gets.chomp.downcase
  # Collect movie title from user
  puts "What is the title of the movie?"
  title = gets.chomp
  # Collect movie director from user
  puts "What is the name of this movie's director?"
  director = gets.chomp
  # Collect release date from user and convert to a number
  puts "What year was this movie released?"
  release_year = gets.chomp.to_i
  puts "Your movie has been added to your personal database! Press enter to continute adding movies or type done to finish"
  input = gets.chomp
end

  # IF comedy
    # Insert information into comedy table
  # ELSIF horror
    # Insert information into horror table
  # ELSIF romance
    # Insert information into romance table
  # ELSIF action
    # Insert information into action table
  # ELSIF scifi
    # Insert information into scifi table
  # ELSIF drama
    # Insert information into drama table
  # ELSE
    # Tell user category unknown
    # List available categories
    # Ask user for movie category
  # END

# Repeat display method until user says exit
  # Ask user if they would like to view their lists
    # IF yes
      # Ask which category they would like to see
      # IF all
        # Display all
      # ELSIF comedy
        # display comedy table
      # ELSIF horror
        # display horro table
      # ELSIF romance
        # display romance table
      # ELSIF action
        # display action
      # ELSIF scifi table
        # display scifi table
      # ELSIF drama
        # display drama table
      # ELSE
        # Tell them to pick one of the categories or say all
      # END



