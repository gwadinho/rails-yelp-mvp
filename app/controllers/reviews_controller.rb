class ReviewsController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = Review.all
  end

  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      return redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
