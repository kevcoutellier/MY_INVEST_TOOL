    require 'uri'
    require 'net/http'
    require 'openssl'

class RealEstatesController < ApplicationController
  before_action :set_real_estate, only: [ :show, :edit, :update, :destroy]
  def index
    @real_estates = RealEstate.all
    @markers = @real_estates.geocoded.map do |real_estate|
      {
        lat: real_estate.latitude,
        lng: real_estate.longitude,
        info_window: render_to_string(partial: "info_window", locals: { real_estate: real_estate }),
        real_estate: real_estate.id,
        # image_url: helpers.cloudinary_url(real_estate.photo.key)
      }
    end
  end
  def estimation(address)
    encoded_address = address.gsub(",","%2C").gsub(" ","%20").gsub("É","%C3%89")

    # model = "400%20Ocean%20Dr%2C%20Miami%20Beach%2C%20FL%2033139%2C%20%C3%89tats-Unis"
    url = URI("https://realty-mole-property-api.p.rapidapi.com/salePrice?address=#{encoded_address}&propertyType=Single%20Family&bedrooms=4&bathrooms=2&squareFootage=1600&compCount=5")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request["X-RapidAPI-Key"] = 'f835ac6c59msh54715db3f512f86p19a480jsnf14aac81f626'
    request["X-RapidAPI-Host"] = 'realty-mole-property-api.p.rapidapi.com'

    response = http.request(request)
    @response = response.read_body
    @response = JSON.parse(response.read_body)
    @response = @response["price"]
  end

  def new
    @real_estate = RealEstate.new

  end

  def show
  end

  def create
    @real_estate = RealEstate.new(real_estate_params)
    @real_estate.estimation = estimation(@real_estate.address)
    @real_estate.user = current_user
    if @real_estate.save
      redirect_to real_estate_path(@real_estate)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @real_estate.update(real_estate_params)
      @real_estate.estimation = estimation(@real_estate.address)
      redirect_to real_estates_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @real_estate.destroy
    redirect_to real_estates_path, status: :see_other
  end

  private

  def set_real_estate
    @real_estate = RealEstate.find(params[:id])
  end

  def real_estate_params
    params.require(:real_estate).permit(:address, :description, :type_of, :category, :purchase_price, :floor_space, :year_of_construction, :date_of_purchase, :photo)
  end
end
