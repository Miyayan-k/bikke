class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to review_path(@comment.review)
      flash[:alert] = "コメントを投稿しました"
    else
      redirect_to review_path(@comment.review)
      flash[:alert] = "コメントを入力してください"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      redirect_to review_path(@comment.review)
      flash[:alert] = "コメントを削除しました"
    else
      redirect_to review_path(@comment.review)
      flash[:alert] = "コメントの削除に失敗しました"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, review_id: params[:review_id])
  end
end
