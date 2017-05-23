Rails.application.routes.draw do

   #For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'root#index'
   resources :books, only: [:show]
   resources :users
   resources :categories, only: [:index,:show]
   resources :logs, only: [:create]
   namespace :admin do
     resources :books
     resources :sessions, only:[:show,:create,:destroy]
     resources :logs, only: [:index,:show,:update,:destroy]
   end
end
