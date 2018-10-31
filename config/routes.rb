Rails.application.routes.draw do

  root "products#index"
  resources :products do
    resources :images, :only => [:create, :destroy]
  end
  resources :preferences
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
