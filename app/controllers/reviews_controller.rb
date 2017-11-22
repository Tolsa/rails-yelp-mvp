class ReviewsController < ApplicationController
def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = Review.all
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    if @review.save
      redirect_to restaurant_reviews_path(@restaurant)
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def edit
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.find(params[:id])
  end

  def show
    @review = Review.find(params[:id])
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_reviews_path(@restaurant)
  end

  def update
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to restaurant_reviews_path(@restaurant)
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
