class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
     # upon initialize., shovel the brand into BRANDS
     # we only want unique, so unless BRANDS (already) include? brand
    BRANDS << brand unless BRANDS.include?(brand) 
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def brand=(brand)
    @brand = brand
  end

end