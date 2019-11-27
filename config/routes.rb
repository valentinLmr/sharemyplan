Rails.application.routes.draw do

  get 'cotisations/show'
  get 'cotisations/new'
  get 'cotisations/create'
  get 'cotisations/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/dashboard', to: 'profiles#dashboard'

  resources :services, only:[:index, :show] do
    resources :subscriptions, only:[:index, :new, :create]
  end

  resources :subscriptions, except:[:new, :create] do
    resources :cotisations, only:[:index, :new, :create]
  end

  resources :cotisations, only:[:destroy, :show] do
    resources :reviews, only:[:index, :new, :create, :update]
  end
end
