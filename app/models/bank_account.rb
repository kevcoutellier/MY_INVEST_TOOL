class BankAccount < ApplicationRecord
  TYPES = ["Current account", "Savings account", "Joint bank account", "Credit card account"]
  CURRENCY = ["EUR", "USD"]
  belongs_to :user
  validates :bank, presence: true
  validates :account_number, presence: true
  validates :type_of, presence: true, inclusion: { in: TYPES }
  validates :balance, presence: true
  validates :currency, presence: true, inclusion: { in: CURRENCY }
  has_one_attached :photo

  def self.all_bank
    bank_accounts = BankAccount.all
    total_bank = bank_accounts.pluck(:balance).compact.sum
  end
end
