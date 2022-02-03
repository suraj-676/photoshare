Rails.application.routes.draw do
  root to: "pages#home"
  resources :users
  resources :posts do
    resources :comments
  end
  get "/login" => "session#new"
  post "/login" => "session#create" #form submitts here

  delete "/login" => "session#destroy"
end
