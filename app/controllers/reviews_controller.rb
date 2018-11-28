class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(params_new)
    @review.restaurant = @restaurant
    if @review.save # results in true or false
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end


  private

  def params_new
    params.require(:review).permit(:content, :rating)
  end
end
