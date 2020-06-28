class ReviewsController < ApplicationController
  def create
    @establishment = Establishment.find(params[:establishment_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.establishment = @establishment
    if @review.save
      redirect_to establishment_path(@establishment)
    else
      render template: 'establishments/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :access_rating, :service_rating)
  end
end
