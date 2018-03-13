Rails.application.routes.draw do

   #For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'root#index'
   resources :books, only: [:show]
   resources :logs, only: [:destroy]
   resources :users do
     resources :logs, only: [:create, :index]
   end
   resources :categories, only: [:index,:show]
   get    'login'   => 'sessions#new'
   post   'login'   => 'sessions#create'
   delete 'logout'  => 'sessions#destroy'
   namespace :admin do
     resources :books
     resources :logs, only: [:index,:show,:update,:destroy] do
       post 'toggle_confirm'
     end
   end
end
