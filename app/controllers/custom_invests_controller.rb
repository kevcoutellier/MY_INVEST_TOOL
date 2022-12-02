class CustomInvestsController < ApplicationController
  # validates :name,:category, :quantity, :unity_cost
  # belongs_to :user
  before_action :set_custom_invest, only: [:edit, :show, :update, :destroy]

  def index
    @custom_invests = CustomInvest.all

    # @markers = @custom_invests.geocoded.map do |custom_invest|
    #   {
    #     lat: custom_invest.latitude,
    #     lng: custom_invest.longitude,
    #     info_window: render_to_string(partial: "info_window", locals: {custom_invest: custom_invest})
    #   }
    # end
  end

  def new
    @custom_invest = CustomInvest.new
  end

  def create
    @custom_invest = CustomInvest.new(params_custom_invest)
    @custom_invest.user = current_user

    if @custom_invest.save
      redirect_to custom_invests_path(@custom_invest)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @custom_invest = CustomInvest.find(params[:id])
  end

  def edit
  end

  def update
    if @custom_invest.update(params_custom_invest)
      redirect_to custom_invests_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @custom_invest.destroy
    redirect_to custom_invests_path, status: :see_other
  end

  private

  def params_custom_invest
    params.require(:custom_invest).permit(:name,:category, :quantity, :unity_cost, :actual_cost, :description, :photo)
  end

  def set_custom_invest
    @custom_invest = CustomInvest.find(params[:id])
  end
end
