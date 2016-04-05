Rails.application.routes.draw do
  resources :productions do
    collection do
      get 'autocomplete'
      get 'search'
    end
  end
  root to: 'productions#index'
end
