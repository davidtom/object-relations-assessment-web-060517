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
