 Rails.application.routes.draw do
  get 'questionary_results/calc/:id', to: 'questionary_results#calc'
  get 'questionary_choices/new/:id', to: 'questionary_choices#new'
  get 'questionary_items/new/:id', to: 'questionary_items#new'
  post 'questionaries/:id', to: 'questionaries#sendform'
  resources :questisults
  resources :questionary_choices
  resources :questionary_items
  resources :questionaries


  resources :answers
  resources :questions

  resources :mycontacts

end