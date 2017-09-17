Rails.application.routes.draw do
  get 'welcome/index', to: 'welcome#index'
  get '/', to: 'entries#index'
  get 'tralala' ,  to: 'welcome#index'
  get 'entries/', to: 'entries#index'
  get 'entries/new', to: 'entries#new', as: "new_entry"
  get 'entries/:id', to: 'entries#show', as: "entry"
  post 'entries', to:'entries#create', as: "create"
  # root 'welcome#index'
  #For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
