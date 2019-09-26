Rails.application.routes.draw do

  root to: 'pages#home'

  get "/products", to: 'product#display_all'
  get "/products/new", to: 'product#new'
  get "/products/create", to: 'product#create'
  get "/products/:id/edit", to: 'product#update'
  get "/products/:id/delete", to: 'product#delete'
  get "/products/:id", to: 'product#show'
  get "/audits/:id", to: 'audit#show'

  



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
