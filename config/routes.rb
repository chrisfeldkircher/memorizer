Rails.application.routes.draw do
  devise_for :admins, controllers: { registrations: "registrations"}
  #devise_for :admins
    root 'welcome#index'
    get 'contact', to: 'messages#new', as: 'contact'
    post 'contact', to: 'messages#create'
    get 'about', to: 'welcome#about'
    get 'calendar', to: 'welcome#calendar', as: 'calendar'
    get 'article/:id', to: 'welcome#post', as: 'post'

    resources :articles
    #resources :images
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
