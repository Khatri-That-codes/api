Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  namespace :api do
    get "/driver/:driver", to: "dialogue#driver"
    get "/team/:team", to: "dialogue#team"
  end

  root to: ->(env) { [200, { "Content-Type" => "text/html" }, ["<h1>Welcome to Dialogue API</h1><p>Use /api/driver/:driver or /api/team/:team to get dialogue data.</p>"]] }
end
