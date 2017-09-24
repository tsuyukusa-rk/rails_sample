class MembersController < ApplicationController
  # アクションコールバック
  # after_action、around_actionとかもある
  before_action :init
  private def init
    @title = '画面'
  end
  # 一覧表示
  def index
    @page_title = '一覧' + @title
    # sortさせる
    @members = Member.order("id")
  end
  # 個別ユーザー表示
  def show
    @page_title = 'ユーザー照会' + @title
    # 1番目を取ってくる
    @member = Member.find(params[:id])
  end
  # 検索結果
  def search
    @page_title = '検索結果一覧' + @title
    @members = Member.search(params[:q])
    render "index"
  end
  def new
    @page_title = '新規作成' + @title
    @member = Member.new(birthday: Date.new(2000, 1, 1))
  end
  def edit
    @page_title = '編集' + @title
    @member = Member.find(params[:id])
  end
  def create
    render plain: "#{params[:controller]}, #{params[:action]}, #{params[:id]}"
  end
  def update
    render plain: "#{params[:controller]}, #{params[:action]}, #{params[:id]}"
  end
  def destroy
    render plain: "#{params[:controller]}, #{params[:action]}, #{params[:id]}"
  end
  def confirm
    render plain: "#{params[:controller]}, #{params[:action]}, #{params[:id]}"
  end
  def regist
    render plain: "#{params[:controller]}, #{params[:action]}, #{params[:id]}"
  end
  def thankyou
    render plain: "#{params[:controller]}, #{params[:action]}, #{params[:id]}"
  end
end
