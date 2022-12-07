class Crypto < ApplicationRecord
  belongs_to :user

  def self.all_gain

    cryptos = Crypto.all
      total_cryptos = cryptos.pluck(:amount).compact.sum

  end
end
