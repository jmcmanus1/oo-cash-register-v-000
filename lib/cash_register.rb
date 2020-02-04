require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    self.items << title 
  end

  def apply_discount
    if discount != 0
      discounted_price = self.total.to_f * 0.20
      self.total = self.total - discounted_price
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
      end
    end
  end

