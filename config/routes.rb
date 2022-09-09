Rails.application.routes.draw do
  resources :portfolios

  get 'about', to: 'pages#About'
  get 'contact', to: 'pages#Contact'
  resources :blogs
  
  root to: 'pages#Home'
end
