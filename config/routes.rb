Rails.application.routes.draw do
  get 'upate_stock/index'
  post 'upate_stock/index', to: 'upate_stock#new'
  post 'manage_stock/index', to: 'manage_stock#new'
  get 'manage_stock/index'
  get 'errors/not_found'

  # Mount point for the API
  mount GestionStock::Base => '/'

  get "*any", via: :all, to: "errors#not_found"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
