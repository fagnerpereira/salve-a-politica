Rails.application.routes.draw do
  resources :politics

  root to: 'politics#index'
end
