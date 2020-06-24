class EstablishmentsController < ApplicationController
  def edit
    @establishment = Establishment.find(params[:id])
  end
  def update
    @establishment = Establishment.find(params[:id])
    @establishment.update(establishment_params)

    redirect_to establishment_path(@establishment)
  end

  private

  def establishment_params
    params.require(:establishment).permit(:name, :address, :phone_number, :description, :category)
  end
end
