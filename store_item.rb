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
    puts "Name: #{@name} \n Color: #{@color} \n Price: #{@price}"
  end
end

item1 = Item.new(name: "Regency Evening Gown", color: "Mazarine Blue", price: 465)
item2 = Item.new(name: "Regency Promenade Gown", color: "Sprigged Muslin", price: 200)
item3 = Item.new(name: "Regency Mourning Gown", color: "Onyx Black", price: 325)

item1.print_info
item2.print_info
item3.print_info
