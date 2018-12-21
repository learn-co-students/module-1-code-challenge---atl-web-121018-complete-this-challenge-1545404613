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
