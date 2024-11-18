Rails.application.routes.draw do


devise_for :users
root to: 'homes#top'
 get "/home/about" => "homes#about", as: "about"
resources :books, only: [:new, :index, :show,:create,:destroy,:edit,:update] do
    resources :book_comments, only: [:create, :destroy]
    resource :favorite, only: [:create, :destroy]
  end
resources :users, only: [:edit,:index,:show,:update]
end