class CreateRealEstales < ActiveRecord::Migration[7.0]
  def change
    create_table :real_estales do |t|
      t.string :address
      t.string :description
      t.string :type
      t.string :category
      t.integer :purchase_price
      t.integer :floor_space
      t.date :year_of_construction
      t.date :date_of_purchase
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
