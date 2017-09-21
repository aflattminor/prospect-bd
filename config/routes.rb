Rails.application.routes.draw do

devise_for :users, controllers: {
  sessions: 'users/sessions',
  passwords: 'users/passwords',
  registrations: 'users/registrations'
}
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
end
