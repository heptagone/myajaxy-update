Myajaxy::Application.routes.draw do
  resources :comments


  authenticated :user do
    root :to => 'comments#index'
  end
  root :to => "comments#index"
  devise_for :users
  resources :users
end
