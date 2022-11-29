class CreateCryptos < ActiveRecord::Migration[7.0]
  def change
    create_table :cryptos do |t|
      t.string :name
      t.string :wallet_address
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
