Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/contacts" => "contacts#index"

  get "/contacts/:id" => "contacts#show"

  post "/contacts" => "contacts#create"

  patch "/contacts/:id" => "contacts#update"

  delete "/contacts/:id" => "contacts#destroy"
end
