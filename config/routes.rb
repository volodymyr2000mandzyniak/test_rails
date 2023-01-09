Rails.application.routes.draw do
  root to: 'items#index'
  get '/admin/users_count', to: 'admin#users_count'
  
  resources :items do
    get :upvote,    on: :member
    get :expensive, on: :collection

  end

end
