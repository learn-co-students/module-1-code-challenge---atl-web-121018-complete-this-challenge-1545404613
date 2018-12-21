require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Blair Ryan")
author2 = Author.new("Brian Sarah")
author3 = Author.new("Sunny Arthur")


article1 = Article.new("What is Love", "Blair Ryan", "Flatiron")
article2 = Article.new("Baby Don't Hurt Me", "Brian Sarah", "Nature Sounds")
article3 = Article.new("No More", "Sunny Arthur", "Dogs")


magazine1 = Magazine.new("Flatiron", "Tech")
magazine2 = Magazine.new("Nature Sounds", "Nature")
magazine3 = Magazine.new("Dogs", "Pets")






### DO NOT REMOVE THIS
binding.pry

0
