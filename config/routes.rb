Rails.application.routes.draw do

devise_for :users, :controllers => { registrations: 'registrations' }

root 'home#show'



  resources :users do
    resources :leads
  end

  resources :leads, only:[:index, :show] do
    resources :calls, only:[:index, :show, :create, :new]
  end

  resources :leads, only:[:index, :show] do
    resources :emails, only:[:index, :show, :create, :new]
  end

  resources :leads, only:[:index, :show] do
    resources :meetings, only:[:index, :show, :create, :new]
  end


  namespace :api do
  namespace :v1 do
    resources :users, only: [:index, :show] do
      resources :calls, only: [:index, :show]
      resources :emails, only: [:index, :show]
      resources :meetings, only: [:index, :show]
      end
    end
  end


end
