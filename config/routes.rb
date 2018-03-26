Rails.application.routes.draw do
  # resources :witnesses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'witnesses#new'
  post '/', to: 'witnesses#create', as: :witnesses
  get '/get_municipality/:department_id', to: "witnesses#get_municipality", as: :get_municipality
end