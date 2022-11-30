class CryptosController < ApplicationController

  # belongs_to :user

  def index
    @cryptos = Crypto.all
  end

  def new
    @crypto = Crypto.new
  end


  def create
    @crypto = Crypto.new(crypto_params)
    @crypto.user = current_user
    if @crypto.save
      redirect_to cryptos_path
    end
  end

  def edit
    @crypto = Crypto.find(params[:id])
  end

  def update
    @crypto = Crypto.find(params[:id])
    @crypto = @crypto.update(crypto_params)
    if @crypto
      redirect_to cryptos_path
    else
      render :edit, status: :unprocessable_entity
    end
  end


  def show
    @crypto = Crypto.find(params[:id])
  end

  def destroy
    @crypto = Crypto.find(params[:id])
    @crypto.destroy
    redirect_to cryptos_path, status: :see_other
  end

    private

    def crypto_params
      params.require(:crypto).permit(:name, :address, :id)
    end

    def set_crypto
      @crypto = Crypto.find(params[:id])
    end
end
