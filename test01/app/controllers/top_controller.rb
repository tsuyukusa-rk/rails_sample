# コントローラー名 継承 親クラス
class TopController < ApplicationController
  before_action :page_init
  # アクション名
  def index
    @time = Time.now.strftime("%Y/%m/%d %H:%M:%S")
  end
  def about
    @about = "about"
    @param1 = params[:aaa]
  end

  private
  def page_init
  end
end
