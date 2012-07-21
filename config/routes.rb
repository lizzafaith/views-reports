ViewsReports::Application.routes.draw do
  
  root :to => 'reports#index'
  
  get 'reports/view' => 'reports#show'
  get 'reports/view/:name_seo' => 'reports#show'
  
  resources :reports
  resources :users
  resources :tags
  resources :galleries
  resources :dictionaryitems
  resources :cities
  resources :photos
  
  
  resources :no_reports
  resources :no_users
  
  
  
end
