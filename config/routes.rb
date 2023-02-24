Rails.application.routes.draw do
  
  namespace :api, defaults: {format: :json}, path: 'v1' do
    resources :spots
    resources :spots_reviews
  end
end
