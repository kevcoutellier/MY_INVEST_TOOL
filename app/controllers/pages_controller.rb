class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :dashboard ]

  def dashboard
    @user = current_user
    @real_estates = RealEstate.all
    @bank_accounts = BankAccount.all
    @custom_invest = 12


  end

  def wallet
  end
end
