# コントローラー名 継承 親クラス
class TopController < ApplicationController
  # アクション名
  def index
    @time = Time.now.strftime("%Y/%m/%d %H:%M:%S")
  end
  def about
    @about = "about"
  end
end
