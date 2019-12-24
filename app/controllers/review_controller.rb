class ReviewController < ApplicationController
  before_action :set_review, only: [:index, :create]
  
  def index
    # @reviews = Review.allはビフォーアクションに記述した
    @review = Review.new
    # レビュー表示と投稿されたら追加していく
  end

  def create
    # binding.pry
    # Review.create(review_params)
    @reviews = Review.create(review_params)
      if @reviews.save
        respond_to do |format|
          format.html { redirect_to review_index_path}
          format.json
        end
        else
          flash.now[:alart] = 'レビューを記入してください'
          render :index
      end
  end
  private
  def review_params
    params.require('@review').permit(:name,:age,:comment)
    # params.require(`モデル名`).permit(`カラム名`)
  end
  def set_review
    @reviews = Review.all
  end
end