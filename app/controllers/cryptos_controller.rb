require "open-uri"

class CryptosController < ApplicationController


  # validates :wallet_address /^0x[a-fA-F0-9]{40}$
  # belongs_to :user


  def index

    @cryptos = Crypto.all

    # API BANDEAU
      url = URI("https://api.freecryptoapi.com/v1/getData?symbol=BTC+ETH+USDT+BNB+USDC+BUSD+XRP+DOGE+ADA+MATIC+DOT+DAI+LTC+SHIB+TRX+SOL+UNI+AVAX+LINK+LEO@binance")
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Get.new(url)

      request['Authorization'] = 'Bearer odf09g6yvwsk9meqpcop'
      res = http.request(request)
        response = JSON.parse(res.read_body)
        @response = response["symbols"]

    # API CLASSEMENT
      url2 = "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin%2Cethereum%2Ctether%2Cbinancecoin%2Cusd-coin%2Cbinance-usd%2Cripple%2Cdogecoin%2Ccardano%2Cmatic-network&vs_currencies=usd&include_market_cap=true&include_24hr_vol=true&include_24hr_change=true&include_last_updated_at=true"
      user_serialized = URI.open(url2).read
        @crypto_user = JSON.parse(user_serialized)
        @crypto_sorted = @crypto_user.sort_by {|key, value| [-value["usd_market_cap"], key] }.to_h
        @crypto_keys = @crypto_user.keys

  end

      def new
        @crypto = Crypto.new
      end

      def create
        @crypto = Crypto.new(crypto_params)

    # API CRYPTO WALLET
          wallet = params[:crypto][:wallet_address]
            url3 = "https://api.etherscan.io/api?module=account&action=balance&address=#{wallet}&tag=latest&apikey=HTNFYRJEM2I5FQJNP6H4FCHM7CH2TZEQMY"
            user_serialized = URI.open(url3).read
            @crypto_wallet = JSON.parse(user_serialized)
        @crypto.user = current_user
        if @crypto_wallet["result"].length >= 19
          @crypto.quantity =  @crypto_wallet["result"].split('').insert(1, '.').join.to_f
        else
          @crypto.quantity =  @crypto_wallet["result"].rjust(18, '0').split('').insert(0, '.').join.to_f
        end
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
    params.require(:crypto).permit(:name, :wallet_address)
  end

  def set_crypto
    @crypto = Crypto.find(params[:id])
  end
end
