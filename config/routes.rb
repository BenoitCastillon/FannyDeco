Rails.application.routes.draw do
  get 'home', to: 'pages#home'
  get 'contact', to: 'pages#contact'
  get 'bio', to: 'pages#bio'
  get 'approche', to: 'pages#approche'
  get 'prestations', to: 'pages#prestations'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
