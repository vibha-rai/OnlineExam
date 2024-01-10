
Rails.application.routes.draw do
  root 'subjects#index'

  resources :subjects, only: [:index] do
    member do
      get 'show_test'
      post 'submit_test'
      get 'result'
    end
  end
end


