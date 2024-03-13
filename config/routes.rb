Rails.application.routes.draw do
  get '/' => 'consults#index'
  post '/consult_results', to: 'consults#form', as: 'form'
end