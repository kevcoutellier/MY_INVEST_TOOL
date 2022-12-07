class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :dashboard ]

  def dashboard
     @user = current_user
     @real_estates = RealEstate.all
     @cryptos = Crypto.all
     @bank_accounts = BankAccount.all
     @custom_invests = CustomInvest.all

  end

  def wallet
  end

end
