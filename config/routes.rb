Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/sandbox' => 'scenes#index'
  resources :genres, only [:index] do
    resources :scripts, only [:index, :show]
  end
  resources :stories, only: [:new, :create, :show] do
    resources :scenes, only: [:show]
    # resources :pictures, only: [:create]
    # resources :generated_words, only: [:create]
  end

  root 'genres#index'
end
