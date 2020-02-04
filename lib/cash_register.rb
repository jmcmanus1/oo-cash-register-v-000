require 'pry'

class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end

  def discount
    self.discount = 20
  end

  def add_item(title, price, quantity = nil)
    add_price = price * quantity.to_i
    self.total += add_price
    binding.pry
  end
end
