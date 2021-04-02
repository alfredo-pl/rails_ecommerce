class HomeController < ApplicationController

  def index
    @products = Product.stock_product
  end
end
