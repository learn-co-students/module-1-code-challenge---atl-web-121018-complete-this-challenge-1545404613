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
