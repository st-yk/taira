class ReviewController < ApplicationController
  before_action :set_review, only: [:index, :create]
  
  def index
    @coms = Com.all
    @com = Com.new
    # レビュー表示と投稿されたら追加していく
  end

  def create
    @coms = Com.create(review_params)
    if @coms.save
      respond_to do |format|
        format.html {redirect_to review_index_path}
        format.json
      end
    else
      flash.now[:alart] = 'レビューを記入してください'
      render :index
    end
    # redirect_to review_index_path
  end
  private

  def review_params
    params.require('@coms').permit(:name,:age,:comment)
    end
  def set_review
    @com = Com.all
  end
end