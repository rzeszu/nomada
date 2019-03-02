Rails.application.routes.draw do

  resources :posts
  get 'about', to: 'pages#about'
  get 'shop', to: 'pages#shop'
  get 'contact', to: 'pages#contact'
  get 'yurt', to: 'pages#yurt'
  get 'care', to: 'pages#care'
  devise_for :admins, path: 'admins'
  root "posts#index"
  resources :products do
    resources :images, :only => [:create, :destroy]
  end
  resources :preferences
  resources :pages
  resource :manage
  get 'manage/index' => 'manage#index'
  get 'manage/products' => 'manage#products'
  get 'manage/categories' => 'manage#categories'
  get 'manage/countries' => 'manage#countries'
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
