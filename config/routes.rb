Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]

    resources :post_comments, only: [:create, :destroy]
  end
  # 以下の行のonly: []内にeditを追加
  resources :users, only: [:show, :edit, :update]

end
