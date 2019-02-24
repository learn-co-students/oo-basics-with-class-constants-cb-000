class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  BRANDS = []
  BRANDS.size = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand 
    #BRANDS.size << brand
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
  
  def brand=(brand)
    @brand = brand
    BRANDS.size << brand
  end 

end