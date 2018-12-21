class Magazine
  attr_accessor :name, :category

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

  def initialize(name, category)
    @name = name
    @category = category
    self.class.all << self
  end

  def articles
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def article_titles
    articles.map do |article|
      article.title
    end
  end

end
