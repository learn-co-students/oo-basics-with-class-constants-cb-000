class Shoe
   BRANDS = []

  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  def initialize(brand)
    @brand = brand
    test_thing = "success"
    Shoe::BRANDS.each do |brand|
      if brand == @brand
        test_thing = "failure"
      end
    end
    if test_thing == "success"
      Shoe::BRANDS << @brand
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
