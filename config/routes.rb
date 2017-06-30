Rails.application.routes.draw do
  post 'registration', to: 'registration#user'
  get 'registration', to: 'registration#user'
  get '/complete' => 'complete#info'
  get 'registration/submit'
  get 'registration/complete'
  get 'registration/login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
