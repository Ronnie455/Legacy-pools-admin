Rails.application.routes.draw do
  post '/contact', to: 'contact#create'
end
