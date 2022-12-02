class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :dashboard ]

  def dashboard
    @user = current_user
    @real_estates = RealEstate.all

  end

  def wallet
  end
end
