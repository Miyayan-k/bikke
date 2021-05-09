class ReviewsController < ApplicationController
  before_action :find_review, only: [:show, :edit, :update, :destroy]
  before_action :no_reload, only: [:destroy]
  before_action :search_reviews, only: [:index, :search]

  def index
    @user = User.new
    @reviews = Review.includes({image_attachment: :blob}).order('created_at DESC').limit(5)
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      flash[:posted] = "投稿が完了しました"
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to review_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    review = Review.find(params[:id])
    if review.destroy
      flash[:delete] = "レビューの削除が完了しました"
      redirect_to root_path
    end
  end

  def search
    @results = @r.result.includes(:image_attachment)
  end

  def displacement
    @review = Review.find_by(displacement_id: params[:id])
    @reviews = Review.where(displacement_id: params[:id]).includes({image_attachment: :blob}).order('created_at DESC')
  end

  def maker
    @review = Review.find_by(maker_id: params[:id])
    @reviews = Review.where(maker_id: params[:id]).includes({image_attachment: :blob}).order('created_at DESC')
  end

  def type
    @review = Review.find_by(type_id: params[:id])
    @reviews = Review.where(type_id: params[:id]).includes({image_attachment: :blob}).order('created_at DESC')
  end

  private
  def find_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(
      :bike, :year, :displacement_id, :maker_id, :type_id,
      :recommend, :comfort, :fuel, :maintenance, :cost,
      :speed, :look, :content, :image).merge(user_id: current_user.id)
  end

  def no_reload
    if request.path_info != session[:ref]
      # 通常時の処理
      session[:ref] = request.path_info
   else
      redirect_to root_path
   end
  end

  def search_reviews
    @r = Review.ransack(params[:q])
  end
end