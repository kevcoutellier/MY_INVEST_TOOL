class AddAmountToCryptos < ActiveRecord::Migration[7.0]
  def change
    add_column :cryptos, :amount, :float
  end
end
