class FavoritesController < ApplicationController
  def index
  end

  def create
    @establishment = Establishment.find(params[:establishment_id])
    @favorite = Favorite.create!(establishment: @establishment, user: current_user)

    respond_to do |format|
      format.html { redirect_to establishments_path }
      format.js
    end

  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @establishment = @favorite.establishment
    @favorite.destroy!

    respond_to do |format|
      format.html { redirect_to establishments_path }
      format.js
    end
  end
end
