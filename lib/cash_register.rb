class CashRegister
  
  attr_reader :discount
  attr_accessor :total
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  def add_item(thing,price,quantity=1)
    @total = @total + price*quantity
  end
  
end

