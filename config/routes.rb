Rails.application.routes.draw do
  resources :quotes
  get 'root', to: 'quotes#root'
  get 'random', to: 'quotes#random'
  root 'quotes#root'
end
