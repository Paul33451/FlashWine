class ReviewsController < ApplicationController

  def index
    @wine = Wine.find(params[:wine_id])
    @review = Review.all
  end

  def new
    @wine = Wine.find(params[:wine_id])
    @review = Review.new
  end

  def create
    @wine = Wine.find(params[:wine_id])
    @review = Review.new(review_params)
    @review.wine = @wine
    @review.user = current_user
    if @review.save
      respond_to do |format|
        format.html {redirect_to wine_path(@wine)}
        format.js
      end
    else
      respond_to do |format|
        format.html {render 'wines/show'}
        format.js
      end
    end
  end

  def show
    @reviews = Review.all
  end

  def edit
    @review = Review.find(params[:id])
    @wine = @review.wine
  end

  def update
    if @review.update(review_params)
      redirect_to wine_path(@wine)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @wine = @review.wine
    @review.user = current_user
    @review.destroy
    redirect_to wine_path(@wine)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

end
