Rails.application.routes.draw do
  resources :potatos
  resources :rice
  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new', as: 'new_article'
  get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  get '/articles/:id' => 'articles#show', as: 'article'
  patch '/articles/:id' => 'articles#update'
  post '/articles' => 'articles#create', as: 'create_article'
  delete '/articles/:id' => 'articles#destroy'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
