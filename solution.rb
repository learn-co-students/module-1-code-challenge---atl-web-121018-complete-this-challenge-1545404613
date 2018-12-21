# Please copy/paste all three classes into this file to submit your solution!
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
    self.all.find do |mag|
      mag.name
    end
  end

  def article_titles
    Article.all.select do |article|
      article.magazine == self
    end.map do |article|
      article.title
    end
  end

end



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

  def add_article(magazine, title)
    Article.new(self, magazine, title)
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

  def show_specialities
    magazines.map do |article|
      article.category
    end
  end

end



class Article

attr_reader :author, :magazine, :title

@@all = []

  def initialize(author, magazine, title)
    @author = author
    @magazine = magazine
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

end
