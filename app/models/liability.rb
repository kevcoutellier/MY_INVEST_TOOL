class Liability < ApplicationRecord
  LOAN_TYPE = ["Amortising loan(standard)", "Bullet loan ", "Partial payment delay loan", "Total payment delayloan"]
  belongs_to :user
  validates :loan_name, presence: true
  validates :type_of, inclusion: { in: LOAN_TYPE }
  validates :amount, presence: true
  validates :monthly_payment, presence: true
  validates :interest_rate, presence: true
  validates :start_date, presence: true
  validates :duration, presence: true


def self.all_gain
  liabilities = Liability.all
      total_liabilities = liabilities.pluck(:amount).compact.sum
end

end
