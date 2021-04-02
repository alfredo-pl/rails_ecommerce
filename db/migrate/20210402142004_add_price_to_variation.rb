class AddPriceToVariation < ActiveRecord::Migration[5.2]
  def change
    add_column :variations, :price, :decimal
  end
end
