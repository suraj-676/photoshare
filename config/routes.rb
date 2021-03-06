Rails.application.routes.draw do
  root to: "pages#home"
  resources :users
  post "/posts/:id" => "comments#create"
  post "/users/:id" => "profile#create"
  resources :posts
  resources :comments

  get "/login" => "session#new"
  post "/login" => "session#create" #form submitts here

  delete "/login" => "session#destroy"
end
