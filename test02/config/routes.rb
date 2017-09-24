Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # RESTfulに応じて、CRUDのルーティングを用意してくれる
  resources :users
  resources :members do
    # 複数に対して
    collection { get 'search' }
    # 単数に対して
    member { patch 'confirm', 'regist' }
    member { get 'thankyou' }
  end
  # セッションには必要最低限のものを入れる
  # あまり入れるとメモリを食う
  # sessionは単数形のresourceにする
  resource(:session, only: [:create, :destory])
end
