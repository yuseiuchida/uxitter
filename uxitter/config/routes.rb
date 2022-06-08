Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  resources :posts, only: %i[index new create show destroy] do
    member do
      post :good
    end
  end
  resources :words
end
