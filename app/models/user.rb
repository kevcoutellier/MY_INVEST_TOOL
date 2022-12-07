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

  def self.all_gain
    total = 0
    total = Crypto.all_gain + RealEstate.all_gain + CustomInvest.all_gain + BankAccount.all_bank
  end
end
