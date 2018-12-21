require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

bob = Author.new("Bob")
sam = Author.new("Sam")

times = Magazine.new("Times", "Politics")
people = Magazine.new("People", "Fashion")

article1 = Article.new(bob, times)
article2 = Article.new(sam, people)







### DO NOT REMOVE THIS
binding.pry

0
