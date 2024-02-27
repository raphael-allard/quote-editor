Rails.application.routes.draw do
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check

  root to: "pages#home"

  resources :quotes do
    resources :line_item_dates, except: [:index, :show]
  end
end
