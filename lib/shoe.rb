class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS=[]

  def initialize(brand)
    @brand = brand
    brands(brand)
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def brands(brand)
    if BRANDS.include?(brand) == false
      BRANDS << brand
    end
  end


end
