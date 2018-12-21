# Please copy/paste all three classes into this file to submit your solution!

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




class Article

  attr_reader :author, :title, :magazine

  @@all = []

  def initialize(author, title, magazine)
    @author = author
    @title = title
    @magazine = magazine

    @@all << self
  end

  def self.all
    @@all
  end

  def author
    @author
  end

  def magazine
    @magazine
  end

  def title
    @title
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

  def self.find_by_name(name) #tested
    self.all.find do |magazine|
      magazine.name == name
    end
  end

  def article_titles #tested
    magazines = Article.all.select do |article|
      article.magazine == self
    end
    magazines.map do |magazine|
      magazine.title
    end
  end
end
