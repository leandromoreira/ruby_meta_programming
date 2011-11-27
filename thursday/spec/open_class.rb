class Pokemon
end

c = Pokemon

pikachu = Pokemon.new
pisduck = Pokemon.new

def pikachu.lighting(power)
 "#{self} is attacking with light [#{power}]"
end

c.class_eval do
 def name
  "pisduck"
 end
end

#puts pisduck.lighting 20 -> this is illegal, only pikachu has this method LoL, 
#it's a sigleton method to this unique object. 
puts pikachu.lighting 10
puts "#{pikachu.name} - #{pisduck.name}"
#on the other hand this class open (without know the name [Constant]) it's valid for every class Pokemon
