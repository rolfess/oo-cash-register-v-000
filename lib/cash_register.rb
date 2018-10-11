
class CashRegister
 attr_accessor :cash_register, :total, :discount

  def initialize(total = 0)
    @total = 0
    #@discount = discount
    @cart = []
  end


def add_item(item, price, quantity = 1)
  #accept item, price, optional quantity, adds to total and remembers total
end

def apply_discount
  #success message or no discount to apply. After discount, total is...
end

def items
  #returns an array of items added to the cart
end

def void_last_transaction
  #removes the last item from the cart and total
end


end # of class
