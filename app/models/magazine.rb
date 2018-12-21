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
