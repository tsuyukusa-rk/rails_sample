Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # controller + Action名
  # でつなぐ
  # http_method 'url' => 'controller#method'
  # rails routes で設定を参照できる
  # localhost://rails/info/routesでも見れる
  root "top#index"
  get "about" => "top#about"
  get "about/:id" => "top#about"
end
