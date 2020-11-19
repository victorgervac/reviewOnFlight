Rails.application.routes.draw do
 root "path#index"

 namespace :api do 
  namespace :v1 do 
    resources :airlines, param: slug 
    resources :review, only: [:create, :destroy]
  end 
end

get 'path', to: 'pages#index',via: :all
end
