class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    if unique?(brand)
      BRANDS << brand
    end
  end
  
  def brand=(brand)
    @brand=brand
  end

  def unique?(thisBrand)
    Shoe::BRANDS.each do |brand|
      if brand== thisBrand
         return false;
      end
    end
    return true;
  end


  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end

#myShoe = Shoe.new("addidas");
#anotherShoe = Shoe.new("nikes")

#Shoe::BRANDS.each do |brand|
# puts("Brand:  #{brand}");
#end
