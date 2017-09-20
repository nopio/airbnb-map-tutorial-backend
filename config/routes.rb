Rails.application.routes.draw do
  scope :api do
    resources :places, only: [:index]
  end
end
