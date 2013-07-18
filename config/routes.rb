GetToken::Application.routes.draw do
  get '/auth' => 'auth#index'
  get '/auth/google_login/callback' => 'auth#callback'

  root to: 'auth#index'
end
