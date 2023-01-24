Rails.application.routes.draw do
  devise_for :users
  root to: "pages#dashboard"
  post 'sign_out', to: "devise/sessions#destroy"

  get 'wallet', to: "pages#wallet"
  resources :pages, only: [:index]
  resources :cryptos
  resources :real_estates
  resources :custom_invests
  resources :bank_accounts
  resources :liabilities

end
