Rails.application.routes.draw do
  get "about/index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/characters", to: "character#index", as: "characters"

  get "/character/:id", to: "character#show", as: "character"

  get "/issues", to: "issues#index", as: "issues"

  get "/issue/:id", to: "issues#show", as: "issue"
end
