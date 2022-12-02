class BankAccount < ApplicationRecord
  TYPES = ["Compte courant", "Compte d'épargne(Livret)", "Compte joint", "Carte de crédit"]
  CURRENCY = ["EUR", "USD"]
  belongs_to :user
  validates :bank, presence: true
  validates :account_number, presence: true
  validates :type_of, presence: true, inclusion: { in: TYPES }
  validates :balance, presence: true
  validates :currency, presence: true, inclusion: { in: CURRENCY }
end
