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
