class BankAccountsController < ApplicationController
  before_action :set_bank_account, only: [ :show, :destroy]
  def index
    @bank_accounts = BankAccount.all
  end

  def new
    @bank_account = BankAccount.new
  end

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
