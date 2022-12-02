class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :dashboard ]

  def dashboard
    # @user = current_user
    # @real_estates = RealEstate.all
    # @real_estate = RealEstate.new
    # @bank_accounts = BankAccount.all
    # @bank_account = BankAccount.find(params[:id])

  end

  def wallet
  end

end
