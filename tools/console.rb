require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


tolkien = Author.new("Tolkien")
rowling = Author.new("Rowling")

hobbit = Magazine.new("Hobbit", "Fiction")
harrypotter = Magazine.new("Harry Potter", "Fiction")

article1 = Article.new(tolkien, "title1", hobbit)
article2 = Article.new(rowling, "title2", harrypotter)



### DO NOT REMOVE THIS
binding.pry

0
