# item1 = { name: "regency evening gown", color: "mazarine blue", price: 465 }
# item2 = { name: "regency promenade gown", color: "sprigged muslin", price: 200 }
# item3 = { :name => "regency mourning gown", :color => "onyx black", :price => 325 }

class Item
  attr_reader :name, :color, :price
  attr_writer :price

  def initialize(input_options)
    @name = input_options[:name]
    @color = input_options[:color]
    @price = input_options[:price]
  end

  def print_info
    puts " Name: #{@name} \n Color: #{@color} \n Price: #{@price}"
  end

  def sale_price
    @price = @price * 0.8
  end
end

class Food < Item
  attr_accessor :shelf_life

  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end

  def expiration_date
    puts "#{@name} expires in #{@shelf_life}!"
  end
end

class Fashion < Item
  attr_accessor :year

  def initialize(input_options)
    super
    @year = input_options[:year]
  end

  def stylish
    puts "#{@name} went out of fashion in #{@year}!!"
  end
end

item1 = Item.new(name: "Regency Evening Gown", color: "Mazarine Blue", price: 465)
item2 = Item.new(name: "Regency Promenade Gown", color: "Sprigged Muslin", price: 200)
item3 = Item.new(name: "Regency Mourning Gown", color: "Onyx Black", price: 325)

snack = Food.new(name: "Macaron", color: "Pink", price: 25, shelf_life: "3 days")

gown = Fashion.new(name: "Round Gown", color: "Cloth of Gold", price: 500, year: 1745)

item1.print_info
item2.print_info
item2.print_info

snack.expiration_date

gown.stylish
