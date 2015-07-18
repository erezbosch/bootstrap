AuthDemo::Application.routes.draw do
  resource :session, only: [:create, :destroy, :new]
  resource :user, only: [:create, :new, :show] do
    resource :counter, only: [:update]
  end
  get '/home', to: "static_pages#home"
  get '/contact', to: "static_pages#contact"
  get '/about', to: "static_pages#about"
end
