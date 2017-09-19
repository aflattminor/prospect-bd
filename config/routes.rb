Rails.application.routes.draw do
  devise_for :users
root 'home#show'

resources :users

  resources :companies do
      resources :leads
  end


  resources :users do
    resources :leads
  end
end
