AdoptirV1::Application.routes.draw do
  devise_for :users

   root to: 'markets#index'

   resources :startups

   resources :markets

   resources :users

   get 'users/show/endorsements', to: 'users#endorsements'
   # , as: "endorsements"


   post '/startup_users/create/:id', to: 'startup_users#create'

   post '/startup_users/delete/:id', to: 'startup_users#delete'

   post '/startup_users/profile_delete/:id', to: 'startup_users#profile_delete'

end
