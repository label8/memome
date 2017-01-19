Rails.application.routes.draw do
  root to: 'top_pages#index'

  get '/show/:id', to: 'top_pages#show', as: 'article'
end
