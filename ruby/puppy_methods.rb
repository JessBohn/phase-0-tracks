class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

sparky = Puppy.new
sparky.fetch("ball")