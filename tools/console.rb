require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

blair = Author.new("Blair")
sarah = Author.new("Sarah")
vanessa = Author.new("Vanessa")

gq = Magazine.new("GQ", "Casual")
vogue = Magazine.new("Vogue", "Fashion")
insider = Magazine.new("Insider", "Business")

tech = Article.new(blair, gq, "loving ruby")
good = Article.new(sarah, vogue, "looks nice")
vacation = Article.new(vanessa, insider, "christmas")







### DO NOT REMOVE THIS
binding.pry

0
