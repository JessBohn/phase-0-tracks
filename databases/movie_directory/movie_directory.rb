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


#USER INPUT

# Run movie data collection until user enters done
input = ""
until input == "done"
  # Ask user for category of movie to be entered into collection
  print "What is the category of the movie? "
  # Collect and covert category to lowercase letters
  category = gets.chomp.downcase
  # Collect movie title from user
  print "What is the title of the movie? "
  title = gets.chomp
  # Collect movie director from user
  print "What is the name of this movie's director? "
  director = gets.chomp
  # Collect release date from user and convert to a number
  print "What year was this movie released? "
  release_year = gets.chomp.to_i

  # IF comedy
  if category == "comedy"
    # Create comedy table
    db.execute(create_comedy_cmd)
    # Insert information into comedy table
    db.execute("INSERT INTO comedy (title, director, release_year, category) VALUES (?, ?, ?, ?)", [title, director, release_year, "Comedy" ])
  # ELSIF horror
  elsif category == "horror"
    # Create horror table
    db.execute(create_horror_cmd)
    # Insert information into horror table
    db.execute("INSERT INTO horror (title, director, release_year, category) VALUES (?, ?, ?, ?)", [title, director, release_year, "Horror" ])
  # ELSIF romance
  elsif category == "romance"
    # Create romance table
    db.execute(create_romance_cmd)
    # Insert information into romance table
    db.execute("INSERT INTO romance (title, director, release_year, category) VALUES (?, ?, ?, ?)", [title, director, release_year, "Romance" ])
  # ELSIF action
  elsif category == "action"
    # Create action table
    db.execute(create_action_cmd)
    # Insert information into action table
    db.execute("INSERT INTO action (title, director, release_year, category) VALUES (?, ?, ?, ?)", [title, director, release_year, "Action" ])
  # ELSIF scifi
  elsif category == "sci-fi"
    # Create sci-fi table
    db.execute(create_scifi_cmd)
    # Insert information into scifi table
    db.execute("INSERT INTO scifi (title, director, release_year, category) VALUES (?, ?, ?, ?)", [title, director, release_year, "Science Fiction" ])
  # ELSIF drama
  elsif category == "drama"
    # Create drama table
    db.execute(create_drama_cmd)
    # Insert information into drama table
    db.execute("INSERT INTO drama (title, director, release_year, category) VALUES (?, ?, ?, ?)", [title, director, release_year, "Drama" ])
  # ELSE
  else
    # Tell user category unknown
    puts "That category is not listed in this database. Here are the acceptabe categories"
    # List available categories
    puts "Comedy, Horror, Romance, Action, Science Fiction, Drama"
    # Ask user for movie category
    puts "Please try to re-enter the movie with an appropriate category"
    puts ""
  # END
  end

  puts "Press enter to continute adding movies or type done to finish"
  input = gets.chomp

end

puts "Your movies have been added to your personal database!"


# Ask user if they would like to view their lists
print "Would you like to view your movies?"
view_movies = gets.chomp.downcase
# Repeat display method until user says exit
  # IF yes
  if view_movies == "yes"
    # Ask which category they would like to see
    print "Which category would you like to view?"
    category = gets.chomp.downcase
    # IF all
    # if category == "all"
      # Display all

    # ELSIF comedy
    if category == "comedy"
      # display comedy table
      output = db.execute("SELECT * FROM comedy")
      puts "#{output}"
    # ELSIF horror
    elsif category == "horror"
      # display horror table
      output = db.execute("SELECT * FROM horror")
      puts "#{output}"
    # ELSIF romance
    elsif category == "romance"
      # display romance table
      output = db.execute("SELECT * FROM romance")
      puts "#{output}"
    # ELSIF action
    elsif category == "action"
      # display action
      output = db.execute("SELECT * FROM action")
      puts "#{output}"
    # ELSIF scifi table
    elsif category == "sci-fi"
      # display scifi table
      output = db.execute("SELECT * FROM scifi")
      puts "#{output}"
    # ELSIF drama
    elsif category == "drama"
      # display drama table
      output = db.execute("SELECT * FROM drama")
      puts "#{output}"
    # ELSE
    else
      # Tell them to pick one of the categories or say all
      puts "Please pick one of the available categories to view"
    # END
    end
  else

  end



