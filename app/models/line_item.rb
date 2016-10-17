class LineItem < ApplicationRecord

  belongs_to :product
  belongs_to :cart


  def total_price
    product.sheiHoise
    return product.price * quantity
  end

end

