Rails.application.routes.draw do

  resources :sharks
  
  root 'welcome#index'
end
