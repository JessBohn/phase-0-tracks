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
    title VARCHAR(255),
    director VARCHAR(255),
    release_year INT,
    category VARCHAR(255)
  )
SQL

# Horror
create_horror_cmd = <<-SQL2
  CREATE TABLE IF NOT EXISTS horror(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    director VARCHAR(255),
    release_year INT,
    category VARCHAR(255)
  )

SQL2

# Romance
create_romance_cmd = <<-SQL3
  CREATE TABLE IF NOT EXISTS romance(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    director VARCHAR(255),
    release_year INT,
    category VARCHAR(255)
  )
SQL3

# Action
create_action_cmd = <<-SQL4
  CREATE TABLE IF NOT EXISTS action(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    director VARCHAR(255),
    release_year INT,
    category VARCHAR(255)
  )
SQL4

# Science Fiction
create_scifi_cmd = <<-SQL5
  CREATE TABLE IF NOT EXISTS scifi(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    director VARCHAR(255),
    release_year INT,
    category VARCHAR(255)
  )
SQL5

# Drama
create_drama_cmd = <<-SQL6
  CREATE TABLE IF NOT EXISTS drama(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
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

# Create separate sql command strings for each category
# def create_comedy(db, title, director, release_year)
#   db.execute("INSERT INTO comedy (title, director, release_year, category) VALUES (?, ?, ?, ?)", [title, director, release_year, "Comedy" ])
# end

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

  # IF comedy
  if category == "comedy"
    # Insert information into comedy table
    db.execute("INSERT INTO comedy (title, director, release_year, category) VALUES (?, ?, ?, ?)", [title, director, release_year, "Comedy" ])
  # ELSIF horror
  elsif category == "horror"
    # Insert information into horror table
    db.execute("INSERT INTO horror (title, director, release_year, category) VALUES (?, ?, ?, ?)", [title, director, release_year, "Horror" ])
  # ELSIF romance
  elsif category == "romance"
    # Insert information into romance table
    db.execute("INSERT INTO romance (title, director, release_year, category) VALUES (?, ?, ?, ?)", [title, director, release_year, "Romance" ])
  # ELSIF action
  elsif category == "action"
    # Insert information into action table
    db.execute("INSERT INTO action (title, director, release_year, category) VALUES (?, ?, ?, ?)", [title, director, release_year, "Action" ])
  # ELSIF scifi
  elsif category == "sci-fi"
    # Insert information into scifi table
    db.execute("INSERT INTO scifi (title, director, release_year, category) VALUES (?, ?, ?, ?)", [title, director, release_year, "Science Fiction" ])
  # ELSIF drama
  elsif category == "drama"
    # Insert information into drama table
    db.execute("INSERT INTO drama (title, director, release_year, category) VALUES (?, ?, ?, ?)", [title, director, release_year, "Drama" ])
  # ELSE
  else
    # Tell user category unknown
    puts "That category is not listed in this database. Here are the acceptabe categories"
    # List available categories
    puts "Comedy, Horror, Romance, Action, Science Fiction, Drama"
    # Ask user for movie category
    puts "Please try to re-enter the movie with an appropriate category\n"
  # END
  end

  puts "Press enter to continute adding movies or type done to finish"
  input = gets.chomp

end

puts "Your movies have been added to your personal database!"

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



