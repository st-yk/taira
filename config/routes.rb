Rails.application.routes.draw do
  # post 'review/create'
  # as:'review'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "top#index"

  # resources :users, only: [:index, :edit, :update]
  resources :review, only: [:index, :create]
  resources :menu, only: [:index]
  resources :info, only: [:index]
  resources :reservation, only: [:index]  #のちに予約機能を実装していく

end


  # @review = review.new(review_params)
    # if @review.save
    #   redirect_to review_index_path(),notice: 'レビューありがとうございます！'
    # else
    #   @review = self.messages.includes(:review)
    #   flash.now[:alart] = '入力してください'
    #   render :index


    
      # = @review.each do |review|
      #   <a href="/users/<%= post.user.id %>"><%= post.user.email %></a>
      #   <p><a href="/posts/<%= post.id %>"><%= post.content %></a></p>
      # <% end %>