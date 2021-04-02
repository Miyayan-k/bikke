class ReviewsController < ApplicationController
  def index
    @user = User.new
  end

  def new
    @breview = Review.new
  end

  private
  def bikke_params
    params.require(:review).permit(
      :bike, :year, :displacement_id, :maker_id, :type_id,
      :recommend, :comfort, :fuel, :maintenance, :cost,
      :speed, :look, :content, :image).merge(user_id: current_user.id)
  end
end