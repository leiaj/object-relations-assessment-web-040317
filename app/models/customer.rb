class Customer

  attr_accessor :first_name, :last_name
  ALL = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
    ALL << self
  end

  def self.all
    ALL
  end

  def reviews
    @reviews
  end

  def self.find_by_name(name)
    #ALL = [#<Customer:0x007fbb12173368 @first_name="Harry", @last_name="Smith", @reviews=[]>,
 #<Customer:0x007fbb103d7ea8 @first_name="Leia", @last_name="Jospe", @reviews=[]>]
    #given a string of a full name, returns the first customer whose full name matches
    self.all.find {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    #Given a string of a first name, returns an array containing all customers with that first name
    all_array = []
    self.all.each do |customer|
      if customer.first_name == name
        all_array << customer
        #why does this return every instance and not just the ones that match?
      end
    end
  end

  def self.all_names
    self.all.collect do |customer|
      customer.full_name
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content)
    @reviews << restaurant.content
  end

end
