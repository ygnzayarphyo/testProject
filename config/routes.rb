Rails.application.routes.draw do
  resources :blog_posts
  get 'static_pages/Lifestyle'
  get 'static_pages/Entertainment'
  get 'static_pages/Tech'
  get 'static_pages/Food'
  get 'static_pages/Sports'
  get 'static_pages/Videos'
  get 'static_pages/Cinema'
  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#About'
  get '/cinema', to: 'static_pages#Cinema'
  get '/entertainment', to: 'static_pages#Entertainment'
  get '/food', to: 'static_pages#Food'
  get '/lifestyle', to: 'static_pages#Lifestyle'
  get '/sport', to: 'static_pages#Sports'
  get '/tech', to: 'static_pages#Tech'
  get '/video', to: 'static_pages#Videos'
  root 'static_pages#home'
end
