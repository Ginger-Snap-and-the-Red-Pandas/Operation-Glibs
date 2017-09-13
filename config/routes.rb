Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/sandbox' => 'scenes#index'
  get '/stories/:story_url' => 'stories#show', as: :story
  get '/stories/:story_url/scenes/:id' => 'scenes#show', as: :story_scene



  resources :genres, only: [:index] do
    resources :scripts, only: [:index, :show] do
      resources :stories, only: [:create]
    end
  end
  # resources :stories, do
  #   resources :scenes, only: [:show]

  #   # resources :pictures, only: [:create]
  #   # resources :generated_words, only: [:create]
  # end
    # get '/end' => 'scenes#end'
  root 'genres#index'
end
