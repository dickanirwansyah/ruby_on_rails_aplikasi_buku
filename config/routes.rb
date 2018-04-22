Rails.application.routes.draw do
  #get 'bukus/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 root 'bukus#index'

 #get 'category' => 'pages#page_category'

resources :bukus

end
