Rails.application.routes.draw do
  root to: 'homes#top'

  #不要get 'books/new' => 'books#new'

  #get 'books' => 'books#index'#start button用"
  #post 'books' => 'books#create'
  #get 'books/index'
  #get 'books/:id' => 'books#show', as: 'book'
  #get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  #patch 'books/:id/' => 'books#update', as: 'update_book'
  #delete 'books/:id/destroy' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :books
end