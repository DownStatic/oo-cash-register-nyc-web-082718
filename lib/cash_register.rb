require "pry"

class CashRegister
  
  attr_accessor :total,:discount
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def add_item(thing,price,quantity=1)
    @total = @total + price*quantity
  end
  
  def apply_discount
    @total = (@total*(1-@discount.to_f/100)).to_i
    return "After the discount, the total comes to $#{@total}."
  end
  
end

