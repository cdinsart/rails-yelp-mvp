class ReviewsController < ApplicationController
  before_action :set_review
  def new
    @review = Review.new
  end

  def create
    @review = Review.create(set_strong_params)
    @review.restaurant = @restaurant
  end

  private

  def set_review
    @review = Review.find(params[:restaurant_id])
  end

  def set_strong_params
    params.require(:review).permit(:content)
  end
end
