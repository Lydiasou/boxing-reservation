Rails.application.routes.draw do
  devise_for :users, path_names: { sign_in: "login", sign_out: "logout" }

  resources :bootcamps do
    resources :reservation, only: [:new, :create]
  end

  # resources :reservations
  # resources :bootcamps
  devise_scope :user do
    root to: 'pages#home'
    match '/bootcamps/user', to: 'devise/bootcamps#create', via: :post
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
