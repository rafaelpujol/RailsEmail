Rails.application.routes.draw do
  devise_for :users

  resources :mails

  get 'login/Index'

  #get 'home/Index'

  get 'mails/index'
  get 'sent', to: 'mails#sent'
  get 'erase', to: 'mails#erase'
  #delete 'mails/:id', to: 'mails#destroy'

  root  'mails#index'
  #root  'login#Index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
