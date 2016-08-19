Rails.application.routes.draw do
  resources :medicines
  get 'medicine/new'

  get 'sessions/new'

  get 'users/new'
  get 'search' => 'medicines#search' , as: 'search'
    get 'search_results' => 'medicines#search_results' , as: 'search_results'
  root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
end