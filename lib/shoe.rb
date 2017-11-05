# learn spec/02_shoe_spec.rb

# Shoe BRANDS keeps track of all brands
class Shoe
  attr_reader :brand # reader only

  BRANDS = [] # array to keep track of brands

  def initialize(brand)
    @brand = brand
    BRANDS << brand # only keeps track of unique brands
  end
end
