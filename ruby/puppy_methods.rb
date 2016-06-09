class Puppy


  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
  	x.to_i
  	x.times { puts "Woof!" }
  end

  def roll_over
  	puts "*roll over*"
  end

  def dog_years(human_years)
  	dog_year = human_years * 7
  	puts "This dog is #{dog_year} years old in dog years!"
  end

  def sit
  	puts "*sits*"
  end

  def initialize
  	puts "Initializing new puppy instance..."
  end

end

sparky = Puppy.new
sparky.fetch("ball")

sparky.speak(4)
sparky.roll_over
sparky.dog_years(5)
sparky.sit