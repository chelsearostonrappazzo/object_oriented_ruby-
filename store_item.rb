item1 = { name: "regency evening gown", color: "mazarine blue", price: 465 }
item2 = { name: "regency promenade gown", color: "sprigged muslin", price: 200 }
item3 = { :name => "regency mourning gown", :color => "onyx black", :price => 325 }

class Item
  def initialize(input_name, input_color, input_price)
    @name = input_name
    @color = input_color
    @price = input_price
  end
end
