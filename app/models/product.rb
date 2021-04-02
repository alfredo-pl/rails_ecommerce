class Product < ApplicationRecord
  has_and_belongs_to_many :categories

  has_many :order_items
  has_many :orders, through: :order_items
  has_many :variations, dependent: :destroy

  def self.stock_product
    stock_product = []
    self.all.each do |product|
      if product.variations.first && product.variations.first.stock > 0
        stock_product << product
      end
    end
    stock_product
  end
end
