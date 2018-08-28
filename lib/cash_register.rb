class CashRegister
  
  attr_accessor :total,:discount
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def add_item(thing,price,quantity=1)
    @total = (@total + price*quantity)*(1-@discount/100)
  end
  
  def apply_discount
    @total = (@total*(1-@discount/100)).to_f(2)
  end
  
end

