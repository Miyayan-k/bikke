class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @reviews = current_user.reviews.includes({image_attachment: :blob}).order('created_at DESC')
  end
end
