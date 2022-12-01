class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :cryptos, dependent: :destroy
  has_many :real_estates, dependent: :destroy
  has_many :custom_invests, dependent: :destroy
  has_many :bank_accounts, dependent: :destroy
  has_many :liabilities, dependent: :destroy
end
