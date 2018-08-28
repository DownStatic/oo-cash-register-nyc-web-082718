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
    self.total *= (1-self.discount/100)
  end
  
end

