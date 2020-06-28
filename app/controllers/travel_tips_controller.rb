class TravelTipsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @travel = TravelTip.new
    @traveltips = TravelTip.all
  end

  def show
  end

end

