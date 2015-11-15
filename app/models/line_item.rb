class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  def decrement
    if self.quantity > 1
      self.quantity -= 1
    else
      self.destroy
    end
    self
  end
  def total_price
    price * quantity
  end
end
