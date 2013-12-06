Teamfastagents::Application.routes.draw do
  
  devise_for :views

  resources :blogs
  resources :listings

  root :to => 'pages#index'

  # get 'contact' => 'pages#contact'
  get 'about' => 'pages#about'
  get 'blog' => 'pages#blog'
  get 'floorplans' => 'pages#floorplans'

  match 'contact' => 'contact#new', :as => 'contact', :via => :get
	match 'contact' => 'contact#create', :as => 'contact', :via => :post
end
