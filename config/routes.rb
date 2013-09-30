Teamfastagents::Application.routes.draw do
  
  resources :blogs
  resources :listings

  root :to => 'pages#index'
  # get "pages/index"
  get 'contact' => 'pages#contact'
  get 'about' => 'pages#about'
  get 'blog' => 'pages#blog'
end
