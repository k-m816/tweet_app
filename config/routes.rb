Rails.application.routes.draw do
  #ログイン・ログアウト機能
  get 'login' => "users#login_form"
  post 'login' => "users#login"
  post 'logout' => "users#logout"
  
  #ユーザー機能関連#
  get 'users/index' => "users#index"
  get 'users/signup' => "users#new"
  get 'users/:id' => "users#show"
  post 'users/create' => "users#create"
  get 'users/:id/edit' => "users#edit"
  post 'users/:id/update' => "users#update"

  #投稿機能関連#
  get 'posts/index' => "posts#index"
  get 'posts/new' => "posts#new"
  get 'posts/:id' => "posts#show"
  post 'posts/create' => "posts#create"
  get 'posts/:id/edit' => "posts#edit"
  post 'posts/:id/update' => "posts#update"
  post 'posts/:id/destroy' => "posts#destroy"
  
  
  get '/' => "home#top" 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "about" => "home#about"
end
