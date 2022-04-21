Rails.application.routes.draw do
  # get 'static/index'
  # get 'pages/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api, default: {format: :json} do
    namespace :v1,  default: {format: :json} do
      resources :greetings do
      end
    end
  end

  get '*page', to: 'pages#index', constraints: ->(req)do
  !req.xhr? && req.format.html?
 end
 root "pages#index"

end
