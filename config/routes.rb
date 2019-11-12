Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :petplaces do
    resources :appointments, only: [:new, :create]
  end

  resources :appointments, only: [:show]
  # add other routes  for  appointments [:index, show,]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
