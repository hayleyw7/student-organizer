Rails.application.routes.draw do
  root "students#index"
  resources :students
  resources :assignments
end
