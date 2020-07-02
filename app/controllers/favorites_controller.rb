class FavoritesController < ApplicationController
  def index
  end
  def create
    Favorite.create!(establishment_id: params[:establishment_id], user: current_user)

  end
  def destroy
    # @favorite = Favorite.find()
    raise
  end
end
