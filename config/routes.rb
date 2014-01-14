AdoptirV1::Application.routes.draw do
  devise_for :users

   root to: "markets#index"

   resources :startups

   resources :markets

   resources :users

   get 'users/show/endorsements', to: 'users#endorsements'
   # , as: "endorsements"



end
