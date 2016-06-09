class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
  	x.to_i
  	x.times { puts "Woof!" }
  end

end

sparky = Puppy.new
sparky.fetch("ball")

sparky.speak(4)
