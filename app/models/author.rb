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

  def name
    @name
  end

  def author #tested
    self.name
  end

  def add_articles(title, magazine) #tested
    Article.new(self, title, magazine)
  end

  def articles #tested
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines #tested
    articles.map do |article|
      article.magazine
    end
  end

  def show_specialties #tested
    articles.map do |article|
      article.magazine.category
    end
  end
end
