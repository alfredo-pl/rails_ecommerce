class Variation < ApplicationRecord
  belongs_to :product
  belongs_to :color
  belongs_to :size

  def self.product_list
    x = Variation.select(:product_id).distinct.pluck(:product_id)
    Product.where(id: x)
  end
end
