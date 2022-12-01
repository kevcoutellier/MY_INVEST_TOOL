Rails.application.routes.draw do
  devise_for :users
  root to: "pages#dashboard"

  get 'wallet', to: "pages#wallet"
  resources :pages, only: [:index]
  resources :cryptos
  resources :bank_accounts, only: [:new, :index, :destroy, :edit]
  resources :real_estates
  resources :custom_invests, only: [:new, :index, :destroy, :edit]
  resources :liabilities, only: [:new, :index, :destroy, :edit]

end
