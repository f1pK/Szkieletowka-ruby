Rails.application.routes.draw do
  namespace :admin do
      resources :comments
      resources :articles

      root to: "comments#index"
    end
  get 'about', to: 'pages#about', as: 'about'

  root "articles#index"

  resources :articles do
    resources :comments
  end
end
