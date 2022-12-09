class LiabilitiesController < ApplicationController
  before_action :set_liability, only: [ :show, :edit, :update, :destroy]

  def index
    @liabilities = Liability.all
  end

  def new
    @liability = Liability.new
  end

  def create
    @liability = Liability.new(liability_params)
    @liability.user = current_user
    if @liability.save
      redirect_to liabilities_path(@liability)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def destroy
    @liability.destroy
    redirect_to liabilities_path, status: :see_other
  end

  private

  def set_liability
    @liability = Liability.find(params[:id])
  end

  def liability_params
    params.require(:liability).permit(:loan_name, :type_of, :amount, :monthly_payment, :interest_rate, :start_date, :duration,:photo)
  end
end
