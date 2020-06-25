class EstablishmentsController < ApplicationController

  def index
    @categories = %w(Restaurant Bar Cinema Theatre)

    case params["filter"]
    when "Bar"
      @establishments = Establishment.where(category: "Bar").geocoded
    when "Restaurant"
      @establishments = Establishment.where(category: "Restaurant").geocoded
    when "Cinema"
      @establishments = Establishment.where(category: "Cinema").geocoded
    when "Theatre"
      @establishments = Establishment.where(category: "Theatre").geocoded
    else
      @establishments = Establishment.geocoded
    end

    @markers = @establishments.map do |establishment|
      {
        lat: establishment.latitude,
        lng: establishment.longitude,
        average: establishment.access_average,
        name: establishment.name,
        description: establishment.description
      }
    end
  end

  def new
    @establishment = Establishment.new
  end

  def create
    @establishment = Establishment.new(establishment_params)
    if @establishment.save
      redirect_to establishment_path(@establishment)
    else
      render :new
    end
  end

  def show
    @establishment = Establishment.find(params[:id])
    @marker = {
      lat: @establishment.latitude,
      lng: @establishment.longitude,
      average: @establishment.access_average
    }
  end

  def edit
    @establishment = Establishment.find(params[:id])
  end

  def update
    @establishment = Establishment.find(params[:id])
    if @establishment.update(establishment_params)
      redirect_to establishment_path(@establishment)
    else
      render :edit
    end
  end

  private

  def establishment_params
    params.require(:establishment).permit(:name, :address, :phone_number, :description, :category, photos: [])
  end
end
