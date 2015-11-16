class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  belongs_to :order
  def decrement
    if self.quantity > 1
      self.quantity -= 1
    end
  end
  def total_price
    product.price*quantity
  end
end
