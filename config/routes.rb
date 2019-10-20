Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # A nested route
  resources :posts do 
    resources :comments
  end

  root to: "posts#index"

  get '/about', to: 'pages#about'

end
