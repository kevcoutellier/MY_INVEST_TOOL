class CustomInvest < ApplicationRecord
  belongs_to :user

  has_one_attached :photo
  validates :name, presence: true, uniqueness: true
  validates :category, presence: true
  validates :description, presence: true
  validates :quantity, presence: true
  validates :unity_cost, presence: true

  def gain
    if self.actual_cost && self.unity_cost
      (self.actual_cost - self.unity_cost) * self.quantity
    end
  end

  def self.total_gain
    total = 0

    self.all.each do |f|
      total += f.gain
    end
    total

  end

end
