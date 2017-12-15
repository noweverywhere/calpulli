Rails.application.routes.draw do
  authenticate :instructor do
    resources :courses, only: [:index, :show]
  end
  devise_for :instructors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get 'welcome/index'
end
