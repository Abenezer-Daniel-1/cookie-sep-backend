Rails.application.routes.draw do
  root "home#index"

  get "/header", to: "home#show"
end
