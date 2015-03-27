Rails.application.routes.draw do
  root :to => "posts#index"

  resources :posts do
    resources :comments, :except => [:show, :index]
  end
  resources :users, :except => [:index]

  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out
end
