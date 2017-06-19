require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

def create
  #Customers
  david = Customer.new("David", "Tomczyk")
  jenni = Customer.new("Jenni", "Craig")
  evan = Customer.new("Evan", "Eleven")
  david2 = Customer.new("David", "Goliath")

  #Restuarants
  malecon = Restaurant.new("El Malecon")
  poke = Restaurant.new("Poke")
  flex = Restaurant.new("Flex Mussels")

  #Add reviews
  david.add_review(malecon, "It was awesome!!")
  david.add_review(poke, "BYOB is great!")
  evan.add_review(malecon, "bomb chicken")
  jenni.add_review(flex, "Best mussels in town!!")
end

Pry.start
