class EstablishmentsController < ApplicationController
  def edit
    @establishment = Establishment.find(params[:id])
  end
  def update
    raise
  end
end
