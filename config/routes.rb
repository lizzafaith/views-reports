ViewsReports::Application.routes.draw do
  
  root :to => 'reports#show', :defaults => { :seo => "Burning_man_faces_huge_scaling_issues-PUKGC" }
  
  get 'reports/1' => 'reports#show', :defaults => { :seo => "Burning_man_faces_huge_scaling_issues-PUKGC" }
  get 'venues/1' => 'venues#show', :defaults => { :seo => 'C-A-C' }

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
  resources :no_cities
  
  
end
