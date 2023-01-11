Rails.application.routes.draw do
  devise_for :users, path_names: { sign_in: "login", sign_out: "logout" }

  # resources :users do
  #   resources :reservations
  # end

  resources :reservations
  resources :bootcamps
  devise_scope :user do
    root to: 'pages#home'
    match '/bootcamps/user', to: 'devise/bootcamps#create', via: :post
  end
  # devise_for :users
  # root to: "pages#home"
  # resources :bootcamps do
  #   resources :reservations
  # end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
