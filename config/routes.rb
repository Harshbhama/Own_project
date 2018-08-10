Rails.application.routes.draw do
  resources :posts
  devise_for :users

   devise_scope :user do
  authenticated :user do
    root 'posts#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end

  post 'image/create', to: 'images#create', as: :images
  post 'comment/create', to: 'comments#create', as: :comments

  delete 'comments/:id', to: 'comments#destroy', as: :comments_delete

  delete 'images/:id', to: 'images#destroy', as: :images_delete

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
