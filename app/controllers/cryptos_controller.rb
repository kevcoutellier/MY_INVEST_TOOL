class CryptosController < ApplicationController
  validates :name,:address
  belongs_to :user

  def index
    @cryptos = Crypto.all
  end

  def new
    @crypto = Crypto.new
  end


  def create
    @crypto = Crypto.new(crypto_params)
    @booking.user = current_user
    if @crypto.save
      redirect_to wallet_path(@crypto)
    end
  end

  def edit
  end

  def update
    if @crypto.update(params_crypto)
      redirect_to wallet_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @crypto = Crypto.find(params[:id])
  end

  def destroy
    @crypto.destroy
    redirect_to wallet_path, status: :see_other
  end

    private

    def crypto_params
      params.require(:crypto).permit(:name, :address)
    end

    def set_crypto
      @crypto = Crypto.find(params[:id])
    end
end
