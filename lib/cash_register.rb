
class CashRegister
 attr_accessor :cash_register, :total, :discount

  def initialize(total = 0, discount = 0)
    @total = 0
    @discount = 0
    @cart = []
    @last_transaction = 0
  end


def add_item(item, price, quantity = 1)
  #accept item, price, optional quantity so need a default value, adds to total and remembers total
  item_data = {}
  item_data[:item] = item
  item_data[:price] = price
  item_data[:quantity] = quantity
  @cart << item_data
  @last_transaction = price * quantity
  @total = @last_transaction + @total
end

def apply_discount
  #success message or no discount to apply. After discount, total is...
  if @discount == 0
    return "There is no discount to apply."
  else

    @total = @discount * 0.01 * @total + @total
    return "After the discount, the total comes to $#{@total}."
  end # of else
end

def items
  #returns an array of items added to the cart

end

def void_last_transaction
  #removes the last item from the cart and total
  @total = @total - @last_transaction
end


end # of class
