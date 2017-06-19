*Why does the following work? Shouldn't the method scope not have access to
instance variables unless explicitly stated with @ or self?*
  def full_name
    "#{first_name} #{last_name}"
  end

*In review: why does the code below return a stack level too deep error, even
though I have an attr_reader? Further, why does it work with @restaurant?*
  def restaurant
    self.restaurant
  end
