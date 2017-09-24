class MembersController < ApplicationController
  # 一覧表示
  def index
    # sortさせる
    @members = Member.order("id")
  end
  # 個別ユーザー表示
  def show
    # 1番目を取ってくる
    @member = Member.find(params[:id])
  end
  # 検索結果
  def search
    @members = Member.search(params[:q])
    render "index"
  end
  def new
    @member = Member.new(birthday: Date.new(2000, 1, 1))
  end
  def edit
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
