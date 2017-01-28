class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

BRANDS = []

  def initialize(brand)
    @brand = brand
    if BRANDS.include?(@brand)
      BRANDS
    else
      BRANDS << @brand
    end
  end

#def brand
#  if @brand.uniq?
#    BRANDS << @brand
#  end
#end

#def brand
#  if @brand.uniq?
#    BRANDS << @brand
#  end
#end

def
  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
