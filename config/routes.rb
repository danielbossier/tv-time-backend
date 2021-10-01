Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/shows" => "shows#index"
  post "/shows" => "shows#create"
  get "/shows/:id" => "shows#show"
  patch "/shows/:id" => "shows#update"
  delete "/shows/:id" => "shows#destroy"

  get "/actors" => "actors#index"
  post "/actors" => "actors#create"
  get "/actors/:id" => "actors#show"
  patch "/actors/:id" => "actors#update"
  delete "/actors/:id" => "actors#destroy"

  post "/users" => "users#create"
  get "/users/:id" => "users#show"

  post "/sessions" => "sessions#create"

  get "/show_genres" => "show_genres#index"
  get "/show_genres/:id" => "show_genres#show"
  post "/show_genres" => "show_genres#create"
  patch "/show_genres/:id" => "show_genres#update"
  delete "/show_genres/:id" => "show_genres#destroy"

  get "/actor_shows" => "actor_shows#index"
  get "/actor_shows/:id" => "actor_shows#show"
  post "/actor_shows" => "actor_shows#create"
  patch "/actor_shows/:id" => "actor_shows#update"
  delete "/actor_shows/:id" => "actor_shows#destroy"
end
