Rails.application.routes.draw do
  devise_for :users
  root to: "pages#dashboard"

  get 'wallet', to: "pages#wallet"
  resources :pages, only: [:index]
  resources :cryptos
  resources :real_estates
  resources :custom_invests
  resources :bank_accounts
  resources :liabilities, only: [:new, :index, :destroy, :show, :create]
end
