Rails.application.routes.draw do
  resources :users
  resources :symptomps
  resources :med_symptomps
  resources :generics
  resources :brands
  resources :medicines
  resources :stocks
  # welcome page routing
  root             'sessions#home'
  get 'home'    => 'sessions#home'
  get 'help'    => 'static_pages#help'
  get 'sign_up' => 'users#new'
  
  
  get 'medicine/new'
  get 'sessions/new'
  get 'users/new'
  get 'search' => 'medicines#search' , as: 'search'
  get 'search_results' => 'medicines#search_results' , as: 'search_results'
    
  get 'about'   => 'static_pages#about'
  
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  
end