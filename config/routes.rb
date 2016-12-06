Rails.application.routes.draw do
  get 'login/Index'

  get 'home/Index'
  #root  'home#Index'
  root  'login#Index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
