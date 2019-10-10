class CashRegister
  
  attr_accessor :total, :discount, :items_array, :last_item
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items_array = []
    @last_item = {}
  end

  def add_item(title, price, quantity = 1)
    @last_item = {price: price, quantity: quantity}
    @total += (price * quantity)
    quantity.times do 
      @items_array.push(title)
    end
  end
  
  def items
    @items_array 
  end
  
  def calculate_discount(discount)
    return @total = @total - (@total * discount/100)
  end
  
  def apply_discount
    if @discount == 0 
      return "There is no discount to apply."
    else
      discounted_total = calculate_discount(@discount)
      return "After the discount, the total comes to $#{discounted_total}."
      
    end
  end
  
  def void_last_transaction
    @total -= @last_item[:price] * @last_item[:quantity]
    
  end

    
end