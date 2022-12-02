class BankAccount < ApplicationRecord
  TYPES = ["Current account", "Savings account", "Joint bank account", "Credit card account"]
  CURRENCY = ["EUR", "USD"]
  belongs_to :user
  validates :bank, presence: true
  validates :account_number, presence: true
  validates :type_of, presence: true, inclusion: { in: TYPES }
  validates :balance, presence: true
  validates :currency, presence: true, inclusion: { in: CURRENCY }
end
