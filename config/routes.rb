Rails.application.routes.draw do
  devise_for :clubs
  devise_for :coaches
  devise_for :players, path: "joueurs"
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
