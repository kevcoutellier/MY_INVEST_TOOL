class AddMoreColumnsToBankAccount < ActiveRecord::Migration[7.0]
  def change
    add_column :bank_accounts, :bank, :string
    add_column :bank_accounts, :account_number, :string
    add_column :bank_accounts, :type_of, :string
    add_column :bank_accounts, :balance, :integer
    add_column :bank_accounts, :currency, :string
  end
end
