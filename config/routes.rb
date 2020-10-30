Rails.application.routes.draw do
  get "about/index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/characters", to: "character#index", as: "characters"

  get "/character/:id", to: "character#show", as: "character"

  get "/characters/:issue_id", to: "character#show_by_issue", as: "character_issue"

  get "/issues", to: "issues#index", as: "issues"

  get "/issue/:id", to: "issues#show", as: "issue"

  get "/volumes", to: "volume#index", as: "volumes"

  get "/volume/:id", to: "volume#show", as: "volume"
end
