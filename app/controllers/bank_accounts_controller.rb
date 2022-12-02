class BankAccountsController < ApplicationController
  before_action :set_bank_account, only: [ :show, :destroy]
  def index
    @bank_accounts = BankAccount.all
  end

  def new
    @bank_account = BankAccount.new
  end

# BANKING API

  # url2 = "https://{domain}.biapi.pro/2.0/auth/webview/{lang}/connect"
  #       user_serialized = URI.open(url2).read
  #         @bank_user = JSON.parse(user_serialized)



  def create
    @bank_account = BankAccount.new(bank_account_params)
    @bank_account.user = current_user
    if @bank_account.save
      redirect_to bank_accounts_path(@bank_account)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def destroy
    @bank_account.destroy
    redirect_to bank_accounts_path, status: :see_other

  end

  private

  def set_bank_account
    @bank_account = BankAccount.find(params[:id])
  end

  def bank_account_params
    params.require(:bank_account).permit(:bank, :account_number, :type_of, :balance, :currency)
  end
end
