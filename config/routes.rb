Rails.application.routes.draw do
  resources :buymart_store_addresses,param: :postal_code  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
