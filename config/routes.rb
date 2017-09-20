Rails.application.routes.draw do
  scope :api do
    resources :places, only: [:indexw]
  end
end
