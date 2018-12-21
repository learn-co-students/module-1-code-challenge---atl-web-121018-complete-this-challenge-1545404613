require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

sunny = Author.new("Sunny")
roger = Author.new("Roger")

si = Magazine.new("SI", "sports")
film = Magazine.new("Film", "film")

# Article.new(sunny, si, "tebowmania")
# Article.new(roger, film, "Drive")
tebow = sunny.add_article("tebowmania", si)
roger.add_article("Drive", film)
sunny.add_article("dalcons lost season", si)







### DO NOT REMOVE THIS
binding.pry

0
