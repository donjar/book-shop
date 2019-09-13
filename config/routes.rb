Rails.application.routes.draw do
  get('books/new', to: 'books#new')
  post('books', to: 'books#create')
  get('books/:id/edit', to: 'books#edit', as: 'book_edit')
  patch('books/:id', to: 'books#update')
  get('books', to: 'books#list')
  get('books/:id', to: 'books#show', as: 'book')
  delete('books/:id', to: 'books#destroy', as: 'book_destroy')
end
