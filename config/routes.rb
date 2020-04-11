Rails.application.routes.draw do


  get 'realisations/destroy'
  resources :realisations do
  end

  get 'home', to: 'pages#home'
  get 'contact', to: 'pages#contact'
  get 'bio', to: 'pages#bio'
  get 'approche', to: 'pages#approche'
  get 'prestations', to: 'pages#prestations'
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
