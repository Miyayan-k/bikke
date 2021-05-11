class UsersController < ApplicationController
  before_action :user_find, only: :show
  def show
    @user = User.find(params[:id])
    @reviews = current_user.reviews.includes({image_attachment: :blob}).order('created_at DESC').page(params[:page]).per(5)
  end

  private
  def user_find
    @user = User.find(params[:id])
  end
end
