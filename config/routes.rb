# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
 root to: 'lists#index'
 resources :lists, except: [:edit, :update] do
   resources :bookmarks, only: [:create, :new]
 end
 resources :bookmarks, only: :destroy
end
