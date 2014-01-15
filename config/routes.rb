AdoptirV1::Application.routes.draw do
  devise_for :users

   root to: "markets#index"

   resources :startups

   resources :markets

   resources :users

   get 'users/show/endorsements', to: 'users#endorsements'
   # , as: "endorsements"


   post '/startup_users/create/:id', to: 'startup_users#create'



end
