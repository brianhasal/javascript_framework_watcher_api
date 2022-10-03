Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/auth/github/callback" => "github#authorize"
  get "/github_profile" => "github#profile"

  get "/api" => "apis#index"

  patch "/api/:id" => "apis#update"


  get "/react" => "github#reactCheck"

  get "/github" => "github#basicGithub"

end
