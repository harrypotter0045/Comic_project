Rails.application.routes.draw do
  resources :searches
  get "about/index", to: "about#index", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/characters", to: "character#index", as: "characters"

  get "/character/:id", to: "character#show", as: "character"

  get "/characters/:issue_id", to: "character#show_by_issue", as: "character_issue"

  get "/search" => "character#search", :as => "search_page"

  get "/issues", to: "issues#index", as: "issues"

  get "/issue/:id", to: "issues#show", as: "issue"

  get "/volumes", to: "volume#index", as: "volumes"

  get "/volume/:id", to: "volume#show", as: "volume"
end
