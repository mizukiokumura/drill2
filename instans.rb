class Fruits

  def self.fresh
    puts "採れたて新鮮な果実です"
  end

  def initialize(name, price)
    @name = name
    @price = price
  end

  def introduce
    puts "#{@name}は#{@price}円です"
  end

end

apple = Fruits.new("りんご", 120)
orange = Fruits.new("オレンジ", 200)
strawbery = Fruits.new("イチゴ", 60)

Fruits.fresh
apple.introduce
orange.introduce
strawbery.introduce