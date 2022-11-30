class CustomInvest < ApplicationRecord
  belongs_to :user

  has_one_attached :photo
  validates :name, presence: true, uniqueness: true
  validates :category, presence: true
  validates :description, presence: true
  validates :quantty, presence: true
  validates :unity_cost, presence: true
end
