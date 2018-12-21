# Please copy/paste all three classes into this file to submit your solution!
class Author
	attr_accessor :name
	@@all = []

	def initialize(name)
    	@name = name
  		@@all << self
  	end

	def self.all
		@@all
	end

	def add_article(title, magazine)
		Article.new(self, title, magazine)
	end

	def articles
		Article.all.select do |article|
			article.author == self
		end
	end

	def magazines
		self.articles.map do |article|
			article.magazine
		end
	end

	def show_specialties
		self.magazines.map do |magazine|
			magazine.category
		end
	end

end

class Article
	attr_accessor :author, :magazine
	@@all = []

	def initialize(author, magazine)
		@author = author
		@magazine = magazine
		@@all << self
	end

	def self.all
		@@all
	end

end

class Magazine
	attr_accessor :name, :category
	@@all = []

	def initialize(name, category)
    	@name = name
    	@category = category
		@@all << self
    end

  	def self.all
		@@all
  	end

	def self.find_by_name(name)
		self.all.find do |magazine|
			magazine.name == name
		end
	end

	def add_article(author, title)
		Article.new(author, title, self)
	end

	def articles
		Article.all.select do |article|
			article.magazine == self
		end
	end

	def magazines
		self.articles.map do |article|
			article.magazine
		end
	end

	def article_titles
		self.magazines.map do |magazine|
			binding.pry
			magazine.name
		end
	end


end
