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

class Rabbit
  def initialize
    puts "Here comes another rabbit!"
  end
  def hop(x)
    x.times {print "*hop*"}
  end
  def eat_carrots(y)
    print " ate #{y} carrots!"
    puts ""
  end
end

rabbits = Array.new
num_rabbits = 0
while num_rabbits < 50
  rabbits[num_rabbits] = Rabbit.new
  num_rabbits += 1
end
rabbits.each do |i|
  puts "Rabbit number #{rabbits.index(i)}"
  i.hop(2)
end
rabbits.each do |n|
  print "Rabbit number #{rabbits.index(n)}"
  n.eat_carrots(4)
end