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
    self.items_array 
  end
  
  def calculate_discount(discount)
    return self.total = self.total - (self.total * discount/100)
  end
  
  def apply_discount
    if self.discount == 0 
      return "There is no discount to apply."
    else
      discounted_total = calculate_discount(self.discount)
      return "After the discount, the total comes to $#{discounted_total}."
      
    end
  end
  
  def void_last_transaction
    self.total = self.total - self.last_item[:price]* self.last_item[:quantity]
    
  end

    
end