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
    @reviews = @establishment.reviews
    comput_access_average
    comput_service_average
    @establishment.update(access_average: comput_access_average, service_average: comput_service_average)
    @review = Review.new
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

  def comput_access_average
    access_ratings = []
    @establishment.reviews.each do |review|
      access_ratings << review.access_rating
    end
    unless @reviews.count.zero?
      @access_average = access_ratings.sum / @reviews.count
    end
  end

  def comput_service_average
    service_ratings = []
    @establishment.reviews.each do |review|
      service_ratings << review.service_rating
    end
    service_ratings.reject! { |r| r.nil?}
    unless service_ratings.count.zero?
      @service_average = service_ratings.sum / service_ratings.count
    end
  end
end
