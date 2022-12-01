class Liability < ApplicationRecord
  LOAN_TYPE = ["Prêt amortissable(standard)", "Prêt in fine", "Prêt avec différé partiel", "Prêt avec differé total"]
  belongs_to :user
  validates :loan_name, presence: true
  validates :type_of, presence: true, inclusion: { in: LOAN_TYPE }
  validates :amount, presence: true
  validates :monthly_payment, presence: true
  validates :interest_rate, presence: true
  validates :start_date, presence: true
  validates :duration, presence: true
end
