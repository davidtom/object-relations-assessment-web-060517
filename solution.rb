# Please copy/paste all three classes into this file to submit your solution!
##NOTE: CUSTOMER
class Customer
  attr_accessor :first_name, :last_name, :reviews

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
    self.class.all << self
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find{|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    self.all.select{|customer| customer.first_name == name}
  end

  def self.all_names
    self.all.collect{|customer|customer.full_name}
  end

  def add_review(restaurant, content)
    self.reviews << Review.new(restaurant, content, self)
  end

end

##NOTE: Review
class Review
  attr_accessor :content
  attr_reader :restaurant, :reviewer

  def initialize(restaurant, content, reviewer)
    @restaurant = restaurant
    @content = content
    @reviewer = reviewer
  end

  def self.all
  #iterate over all customers array and collect all reviews into one array
  Customer.all.collect{|customer| customer.reviews}.flatten
  end

  def customer
    @reviewer
  end

  def restaurant
    @restaurant
  end

end

##NOTE:Restaurant
class Restaurant
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    Review.all.collect{|review|review.restaurant}.uniq
  end

  def self.find_by_name(name)
    self.all.find{|restaurant| restaurant.name = name}
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    self.reviews.collect{|review| review.customer}
  end

end
