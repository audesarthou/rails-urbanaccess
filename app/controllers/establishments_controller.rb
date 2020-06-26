class EstablishmentsController < ApplicationController

  def index
    @categories = Establishment.categories.keys[0...-2]

    @establishments = Establishment.all

    if params[:search] && !params[:search][:activity].blank?
      @establishments = @establishments.where(category: params[:search][:activity].to_sym)
    end

    if params[:search] && !params[:search][:location].blank?
      @establishments = @establishments.geocoded.near(params[:search][:location], 100)
    end

    if params["filter"]
      @establishments = @establishments.where(category: params["filter"].to_sym)
    end

    @markers = @establishments.geocoded.map do |establishment|
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
