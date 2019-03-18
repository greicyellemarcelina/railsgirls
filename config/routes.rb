Rails.application.routes.draw do
  root to: redirect('/gatineos')

  resources :gatineos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
