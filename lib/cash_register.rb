
class CashRegister
 attr_accessor :cash_register, :total, :discount

  def initialize(total = 0)
    @total = 0
    @discount = discount
    @cart = []
  end


def add_item(item, price, quantity = 1)
  #accept item, price, optional quantity so need a default value, adds to total and remembers total
  cart = {}
  cart[:item] = item
  cart[:price] = price
  cart[:quantity] = quantity
  @final_cart << cart
  @total = price * quantity + @total
end

def apply_discount
  #success message or no discount to apply. After discount, total is...
  if @discount == 0
    return "There is no discount to apply."
  else
    @total = @total * @discount + @total
    return "After the discount, the total comes to $#{@total}." 
  end # of else
end

def items
  #returns an array of items added to the cart
end

def void_last_transaction
  #removes the last item from the cart and total
end


end # of class
