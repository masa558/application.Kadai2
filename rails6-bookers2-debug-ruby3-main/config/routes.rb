Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  
  resources :users, only: [:index,:show,:edit,:update]
  resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
    resources :favorites, only: [:create]
  end

  get "home/about" => "homes#about", as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
