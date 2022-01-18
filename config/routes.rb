Rails.application.routes.draw do
  root 'blog#home'
  get 'about', to: 'blog#about' 
end
