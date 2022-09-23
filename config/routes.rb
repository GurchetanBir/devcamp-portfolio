Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: "portfolio_show"
  get 'about', to: 'pages#About'
  get 'contact', to: 'pages#Contact'
  


  resources :blogs do 
    member do 
      get :toggle_status
    end  
  end
  
  root to: 'pages#Home'
end
