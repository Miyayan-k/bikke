class LikesController < ApplicationController
  before_action :set_variables

  # お気に入り登録
  def like
    like = current_user.likes.new(review_id: @review.id)
    like.save
  end

  # お気に入り解除
  def unlike
    like = current_user.likes.find_by(review_id: @review.id)
    like.destroy
  end

  private
  # Ajax非同期通信のため
  def set_variables
    @review = Review.find(params[:review_id])
    @id_name = "#like-link-#{@review.id}"
  end
end