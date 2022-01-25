Rails.application.routes.draw do
  root 'blog#home'
  get 'about', to: 'blog#about' 
  resources :articles, only: [:show, :index, :new, :create]
end
