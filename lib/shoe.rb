require 'pry'

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  BRANDS = []

  def initialize(brand)
    @brand = brand
    # BRANDS << brand #
    # !(BRANDS.include?(brand)) { BRANDS << brand}
    puts "# *******BRANDS.include?(brand): #{BRANDS.include?(brand)} || brand : #{brand} || BRANDS : #{BRANDS}"
    if !BRANDS.include?(brand)
      BRANDS << brand
    end
    puts "BRANDS ARRAY AFTER: #{BRANDS}"

  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end
