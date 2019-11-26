class ReviewsController < ApplicationController
  def new
    @wine = Wine.find(params[:wine_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @wine = Wine.find(params[:wine_id])
    @review.wine = @wine
    if @review.save
      redirect_to wine_path(@wine)
    else
      render :new
    end
  end

  def show
    @reviews = Review.all
  end

  def edit
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to wine_path(@wine)
    else
      render :edit
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to wines_path
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

end
