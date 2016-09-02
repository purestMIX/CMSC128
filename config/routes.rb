Rails.application.routes.draw do
  resources :medicines
  
  # welcome page routing
  root             'sessions#new'
  get 'home'    => 'sessions#new'
  get 'help'    => 'sessions#help'
  get 'sign_up' => 'sessions#sign_up'
  
  
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
  resources :users
end