Rails.application.routes.draw do
  namespace :api do
    get 'apps/index'
    get 'apps/show'
    get 'apps/create'
    get 'apps/update'
    get 'apps/destroy'
  end
  get 'market/create'
  get 'market/update'
  get 'market/destroy'
  get 'market/edit'
  get 'market/show'
  get 'market/index'
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do
    #API ROUTES SHOULD GO HERE
  end

  #Do not place any routes below this one
  get '*other', to: 'static#index'
end
