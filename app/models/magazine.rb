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
