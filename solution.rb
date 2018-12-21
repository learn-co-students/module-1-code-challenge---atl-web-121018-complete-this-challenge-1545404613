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


class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.find_by_name(name)
    @@all.find {|mag| mag.name == name}
  end

  def article_titles
    Article.all.select do |article|
      article.magazine == self
    end.map { |e| e.title  }
  end

  def self.all
    @@all
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
