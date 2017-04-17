class Restaurant
  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name
    @reviews = []
    ALL << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    #given a string of restaurant name, returns the first restaurant that matches
    self.all.find {|restaurant| restaurant.name == name}
  end

  def reviews
    @reviews
  end

  def customers
    self.reviews.collect do |review|
      review.customer
    end
  end

end
