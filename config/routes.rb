Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  patch 'status_pending/:id', to: 'appointments#status_pending', as: 'pending'
  patch 'status_accepted/:id', to: 'appointments#status_accepted', as: 'accepted'
  patch 'status_canceled/:id', to: 'appointments#status_canceled', as: 'canceled'
  resources :petplaces do
    resources :appointments, only: [:new, :create] do
      resources :reviews, only: [:new, :create]
    end
  end

  resources :petplaces do
    resources :reviews, only: [:new, :create]
  end
  # add other routes  for  appointments [:index, show,]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
