require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


ryan = Author.new("Ryan")
arthur = Author.new("Arther")
bryan = Author.new("Bryan")
sarah = Author.new("Sarah")
cat = Author.new("Cat")
sonny = Author.new("Sonny")

bimmerworld = Magazine.new("Bimmerworld", "cars")
people = Magazine.new("People", "entertainment")
vwtrends = Magazine.new("VW Trends", "cars")
architecture = Magazine.new("Architecture", "design")
us = Magazine.new("US", "entertainment")
economist = Magazine.new("Economist", "finance")

# attr_accessor :author, :name, :magazine
m3vsm5 = Article.new(ryan, "M3vsM5", bimmerworld)
busvsbug = Article.new(ryan, "Bus vs. Bug", vwtrends)
holywoodinside = Article.new(arthur, "Inside Track on pop stars.", people)
busesrock = Article.new(bryan, "Busses Rock!", vwtrends)
buildingdesign = Article.new(sarah, "Building Design", architecture)
cults = Article.new(cat, "Holywood cults", us)
trends = Article.new(sonny, "Current Trends", economist)







### DO NOT REMOVE THIS
binding.pry

0
