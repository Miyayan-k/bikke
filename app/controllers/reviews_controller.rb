class ReviewsController < ApplicationController
  def index
    @user = User.new
    @reviews = Review.includes(:user).order('created_at DESC').limit(10)
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(
      :bike, :year, :displacement_id, :maker_id, :type_id,
      :recommend, :comfort, :fuel, :maintenance, :cost,
      :speed, :look, :content, :image).merge(user_id: current_user.id)
  end
end