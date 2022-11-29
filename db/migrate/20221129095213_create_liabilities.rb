class CreateLiabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :liabilities do |t|
      t.string :loan_name
      t.string :type
      t.integer :amount
      t.integer :monthly_payment
      t.integer :interest_rate
      t.date :start_date
      t.integer :duration
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
