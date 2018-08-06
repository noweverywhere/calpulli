Rails.application.routes.draw do
  resources :course_modules, only: [:show]
  resources :help_sections, path: "help", only: [:index, :show]
  resources :courses, only: [:index, :show]
  devise_for :instructors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
  get "welcome/index"
end
