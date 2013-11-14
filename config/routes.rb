GamingApp::Application.routes.draw do
  root "games#index"
  get "games", to: "games#index"
  get "games/secret_number", to: "games#secret_number"
  get "games/secret_number/:guess", to: "games#secret_number_play"
end
