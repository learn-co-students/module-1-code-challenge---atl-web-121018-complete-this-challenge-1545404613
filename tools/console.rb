require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
arthur = Author.new("Arthur")
bob = Author.new("Bob")
sam = Author.new("Sam")

usweekly = Magazine.new("US Weekly", "News")
natural = Magazine.new("Natural", "Nature")
wild = Magazine.new("Wild", "Nature")

what = arthur.add_article("What Happened", usweekly)
pigs = arthur.add_article("Pigs!", natural)
lizards = arthur.add_article("Great lizards", wild)
now = bob.add_article("The Time is Now", usweekly)
again = sam.add_article("Once again", usweekly)







### DO NOT REMOVE THIS
binding.pry

0
