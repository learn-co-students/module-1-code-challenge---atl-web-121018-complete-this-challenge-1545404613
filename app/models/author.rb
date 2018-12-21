class Author
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_article(title, magazine)
    Article.new(self, magazine, title)
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    articles.map { |e| e.magazine }.uniq
  end

  def show_specialties
    magazines.map { |e| e.category }.uniq
  end
end
