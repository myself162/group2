Group2::Application.routes.draw do
  resources :groups

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root :to => 'high_voltage/pages#show', :id => 'welcome'
end
