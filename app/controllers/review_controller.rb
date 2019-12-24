class ReviewController < ApplicationController
  before_action :set_review, only: [:index, :create]
  
  def index
    # @reviews = Review.allはビフォーアクションに記述した
    @review = Review.new
    # レビュー表示と投稿されたら追加していく
  end

  def create
    # binding.pry
    Review.create(review_params)
    # @review.save
    redirect_to review_index_path
    # render action: :new
  end

  # def create_index
  #   puts "#{@review.name}"
  # end

  private
  def review_params
    params.require('@review').permit(:name,:age,:comment)
    # params.require(`モデル名`).permit(`カラム名`)
  end
  def set_review
    @reviews = Review.all
  end

end