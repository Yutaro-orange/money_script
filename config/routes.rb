Rails.application.routes.draw do
  get '/' => 'consults#index'
  resources :consult_results do
    collection do
      post :consult_results
    end
  end
end