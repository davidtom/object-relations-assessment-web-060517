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
