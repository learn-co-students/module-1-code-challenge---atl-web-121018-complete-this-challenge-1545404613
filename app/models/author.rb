class Author
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
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
    articles.map do |article|
      article.magazine
    end
  end

  def show_specialties
    magazines.map { |magazine| magazine.category }.uniq
  end

end
