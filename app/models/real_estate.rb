class RealEstate < ApplicationRecord
  belongs_to :user
  TYPES = ["Appartement", "Maison", "Immeuble", "Parking/Box", "Terrain", "Local commercial", "Autre"]
  CATEGORIES = ["Résidence principale", "Résidence secondaire", "Bien locatif", "Autre"]
  validates :address, presence: true, uniqueness: true
  validates :description, presence: true
  validates :type_of, presence: true, inclusion: { in: TYPES }
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :purchase_price, presence: true
  validates :floor_space, presence: true
  validates :year_of_construction, presence: true
  validates :date_of_purchase, presence: true
end
