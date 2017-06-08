Rails.application.routes.draw do
    devise_for :users
    
    resources :registered_applications do
    end
    
    root 'welcome#index' 
end
