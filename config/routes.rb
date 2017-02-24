Rails.application.routes.draw do
#  root to: 'articles#index'

  namespace :public do
    root to: 'articles#index'
    get '/', to: 'articles#index'
    get '/category/:id', to: 'articles#articles_in_category', as: 'articles_in_category'
    get '/show/:id', to: 'articles#show', as: 'article'
  end

  namespace :admin do
    root to: 'articles#index'
  end
end
