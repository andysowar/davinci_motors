Rails.application.routes.draw do
  #get '/' => 'cars#index', as: 'root'
  root 'cars#index'

  get 'cars/new' => 'cars#new', as: 'new_car'

  post 'cars' => 'cars#create'

  get 'cars/:id/edit' => 'cars#edit', as: 'edit_car'

  patch 'cars/:id' => 'cars#update', as: 'car'
end
