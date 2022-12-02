class AddQuantityToCryptos < ActiveRecord::Migration[7.0]
  def change
    add_column :cryptos, :quantity, :float
  end
end
