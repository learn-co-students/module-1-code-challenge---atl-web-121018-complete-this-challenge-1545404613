class Magazine
  attr_accessor :name, :category, :title

  @@all = []
#tested
  def initialize(name, category)
    @name = name
    @category = category
  end

  def category(category)
    @category = category
  end

  def self.all
    @@all << name
  end

  def self.find_by_name
    Article.find do |magazine|
      self.first
    end
  end

  def article_titles(titles)
    Article.title.all
  end
end






  # ### Magazine
  # A magazine is initialized with a name as a string and a category as a string. The name of the magazine and the category of the magazine **can be** changed after being initialized.
  #
  # + `Magazine#name`
  #   + Returns the name of this magazine
  # + `Magazine#category`
  #   + Returns the category of this magazine
  # + `Magazine.all`
  #   + Returns an array of all Magazine instances
  # + `Magazine.find_by_name(name)`
  #   + Given a string of magazine's name, this method returns the first magazine object that matches
  # + `Magazine#article_titles`
  #   + Returns an array of the titles of all articles written for that magazine
