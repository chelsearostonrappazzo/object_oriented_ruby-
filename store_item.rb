# item1 = { name: "regency evening gown", color: "mazarine blue", price: 465 }
# item2 = { name: "regency promenade gown", color: "sprigged muslin", price: 200 }
# item3 = { :name => "regency mourning gown", :color => "onyx black", :price => 325 }

class Item
  attr_reader :name, :color, :price
  attr_writer :price

  def initialize(input_name, input_color, input_price)
    @name = input_name
    @color = input_color
    @price = input_price
  end

  def print_info
    puts "Name: #{@name} \n Color: #{@color} \n Price: #{@price}"
  end
end

item1 = Item.new("regency evening gown", "mazarine blue", 465)
item2 = Item.new("regency promenade gown", "sprigged muslin", 200)
item3 = Item.new("regency mourning gown", "onyx black", 325)
