class Review

  attr_accessor :content, :customer, :restaurant

  ALL = []

  def initialize(content, customer, restaurant)
    @content = content
    @customer = customer
    @restaurant = restaurant
    # restaurant.add_restaurant(self)
    # customer.add_review(restaurant, self.content)
    ALL << self
  end

  def self.all
    ALL
  end

  def customer
    self.all.collect do |review|
      review.customer
    end
  end

  def restaurant
    @reviews.collect do |review|
      review.restaurant
    end
  end

end
