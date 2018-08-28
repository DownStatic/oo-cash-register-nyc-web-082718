require "pry"

class CashRegister
  
  attr_accessor :total,:discount,:items
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(thing,price,quantity=1)
    @total = @total + price*quantity
    quantity.times do @items << thing
  end
  
  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    end
    @total = (@total*(1-@discount.to_f/100)).to_i
    return "After the discount, the total comes to $#{@total}."
  end
  
end

