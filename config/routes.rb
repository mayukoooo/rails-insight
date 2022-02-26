Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :v1 do
    resources :categories, only: %i[index create destroy]
    resources :users, only: %i[index create]
    resources :answers, only: %i[index create destroy]
    resources :questions, only: %i[index create destroy]
    resources :shares, only: %i[index create destroy]
  end
end
